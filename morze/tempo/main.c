/*
 * This example demonstrates how to use EXTI and System Timer
 */

#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_utils.h"
#include "stm32f0xx_ll_cortex.h"

/**
  * System Clock Configuration
  * The system Clock is configured as follow :
  *    System Clock source            = PLL (HSI/2)
  *    SYSCLK(Hz)                     = 48000000
  *    HCLK(Hz)                       = 48000000
  *    AHB Prescaler                  = 1
  *    APB1 Prescaler                 = 1
  *    HSI Frequency(Hz)              = 8000000
  *    PLLMUL                         = 12
  *    Flash Latency(WS)              = 1
  */
static void rcc_config()
{
    /* Set FLASH latency */
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);

    /* Enable HSI and wait for activation*/
    LL_RCC_HSI_Enable();
    while (LL_RCC_HSI_IsReady() != 1);

    /* Main PLL configuration and activation */
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2,
                                LL_RCC_PLL_MUL_12);

    LL_RCC_PLL_Enable();
    while (LL_RCC_PLL_IsReady() != 1);

    /* Sysclk activation on the main PLL */
    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
    while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

    /* Set APB1 prescaler */
    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

    /* Update CMSIS variable (which can be updated also
     * through SystemCoreClockUpdate function) */
    SystemCoreClock = 48000000;
}

/*
 * Configure GPIO
 */
static void gpio_config(void)
{
    /*
     * Configure LEDs
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
    /*
     * Turn on pull down resistors for external interrupt channels
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_1, LL_GPIO_PULL_DOWN);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_0, LL_GPIO_PULL_DOWN);
    return;
}

/*
 * Configure external interrupts
 */
static void exti_config(void)
{
    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_SYSCFG);

    //LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE1);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE0);
    //LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_1);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_0);

    //LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_1);
    //LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_1);

    LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_0);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_0);
    /*
     * Setting interrupts
     */
    NVIC_EnableIRQ(EXTI0_1_IRQn);
    NVIC_SetPriority(EXTI0_1_IRQn, 0);
}


static int counter_top = 1000;
static int milliseconds = 0;

static char buffer[1000];
static int pc = 0;
/*
 * Handler for encoder
 */

const int anti_bounce = 70;
const int dot = 100;

static int ms_old = 0;

void EXTI0_1_IRQHandler(void)
{
    int ms = milliseconds;
    int cur = ms - ms_old;

    if (cur < anti_bounce) {
        LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);
        return;
    }

    static int is_letter = 0;
    if (!is_letter) {
        is_letter = 1;
        ms_old = ms;

        LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_9);

        LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);
        return;
    }

    is_letter = 0;

    if (cur < dot*4) {
        buffer[pc++] = 1;

        LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_9);
        LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_8);
    }

    else if (cur > dot*4) {
        buffer[pc++] = 2;

        LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_9);
        LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_8);
    }

    ms_old = ms;
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);
}

/*
 * Configure system timer to time 1 ms
 */

 __attribute__((naked)) static void delay(void) {
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay+0x4");
    asm ("pop {r7, pc}");
    asm (".word 0xfffff"); //60000
}

static void systick_config(void)
{
    LL_InitTick(48000000, 1000);
    LL_SYSTICK_EnableIT();
    NVIC_SetPriority(SysTick_IRQn, 0);
    return;
}

/*
 * Handler for system timer
 * Count up to counter_top then switch led
 * (to make blinking more visible)
 */
void SysTick_Handler(void)
{
    static int print = 0;
    int ms = milliseconds;
    int cur = ms - ms_old;

    if (print) return;

    if (cur > dot*16) {
        print = 1;

        LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_8);

        for (int i = 0; i < pc; i++) {
            if (buffer[i] == 1) {
                LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_8);
                delay();
                LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_8);
            }

            else if (buffer[i] == 2) {
                LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_8);
                delay();
                delay();
                delay();
                LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_8);

            }

            buffer[i] = 0;
        }

        pc = 0;
        milliseconds = 0;
    }

    milliseconds++;
    // if (!counter)
    //     LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);
}

int main(void)
{
    rcc_config();
    gpio_config();
    exti_config();
    systick_config();

    LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_8);
    delay();
    LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_8);

    while (1);
    return 0;
}
