#include <stdio.h>

#include "simple_header.h"

#define NAME "Narendiran"

int main(void)
{
    float temp = 0.0;
    printf("Hi %s\n\r", NAME);

    printf("Simple Caluclation...\n\r");
    temp = CONST * PI + 1238;
    printf("output value is %.3f\n\r", temp);

    printf("Bye %s\n\r", NAME);
    return 0;
}
