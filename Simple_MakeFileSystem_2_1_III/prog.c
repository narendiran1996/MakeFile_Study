#include <stdio.h>
#include "mod1.h"
#include "mod2.h"
#include "extra.h"

int main(void)
{
    printf("Basic program for testing\n\r");
    printf("The output of fun1 is %d and fun2 is %f and extra value is %f \n\r", fun1(12), fun2(25), x);
    return 0;
}