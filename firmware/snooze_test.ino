#include <Snooze.h>

const int NUM_STARTUP_BLINK = 10; 
const int STARTUP_BLINK_DT = 200;

const int LED_PIN = 13;
const int LED_BLINK_DT = 1000;

const int RPI_PIN=5;
const int RPI_START_DT = 1000;
const int IMAGE_INTERVAL = 60;

const int BAT_PIN = A1;
const int AIN_READ_RESOLUTION = 16;
const int AIN_READ_AVERAGING = 32; 
const uint16_t AIN_MAX_INT = uint16_t((uint32_t(1) << AIN_READ_RESOLUTION) -1);
const float AIN_MAX_VOLT = 3.3; 
const float BAT_VOLT_MIN = 3.4;

float ain_uint16_to_bat_volt(uint16_t int_value);

SnoozeTimer timer;
SnoozeBlock config(timer);

void setup()
{
    pinMode(LED_PIN,OUTPUT);
    digitalWrite(LED_PIN, LOW);

    analogReadResolution(AIN_READ_RESOLUTION);
    analogReadAveraging(AIN_READ_AVERAGING);

    for (int i=0; i<NUM_STARTUP_BLINK; i++) 
    {
        digitalWrite(LED_PIN, HIGH);
        delay(STARTUP_BLINK_DT);
        digitalWrite(LED_PIN, LOW);
        delay(STARTUP_BLINK_DT);
    }

    pinMode(RPI_PIN,INPUT_PULLUP);
    timer.setTimer(59000);
}

void loop()
{
    static uint16_t min_cnt = 1;
    if (min_cnt == 0)
    {
        digitalWrite(LED_PIN, HIGH);
        // Check battery voltage
        uint16_t bat_int = analogRead(BAT_PIN);
        float bat_volt = ain_uint16_to_bat_volt(bat_int);
        if (bat_volt >= BAT_VOLT_MIN)
        { 
            // Turn on pi 
            pinMode(RPI_PIN,OUTPUT);
            digitalWrite(RPI_PIN,LOW);
            delay(RPI_START_DT);
            pinMode(RPI_PIN,INPUT_PULLUP);
        }
        digitalWrite(LED_PIN, LOW);
    }
    else
    {
        digitalWrite(LED_PIN, HIGH);
        delay(LED_BLINK_DT);
        digitalWrite(LED_PIN, LOW);
    }
    
    Snooze.deepSleep(config);
    min_cnt++;
    min_cnt = (min_cnt + 1)%IMAGE_INTERVAL;
}

float ain_uint16_to_bat_volt(uint16_t int_value)
{
    return 2.0*AIN_MAX_VOLT*float(int_value)/float(AIN_MAX_INT);
}
