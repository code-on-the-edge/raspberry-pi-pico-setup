#include "pico/stdlib.h"
#include "stdio.h"

int main()
{
    // Initialize stdio (optional, for debugging over USB)
    stdio_init_all();

    // Use default onboard LED pin
    const uint LED_PIN = PICO_DEFAULT_LED_PIN; // GPIO PIN 25

    // Initialize the LED pin
    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT);

    while (true)
    {
        printf("LED ON\n\r");
        gpio_put(LED_PIN, 1);  // LED ON
        sleep_ms(200);

        printf("LED OFF\n\r");
        gpio_put(LED_PIN, 0);  // LED OFF
        sleep_ms(200);
    }

    return 0;
}