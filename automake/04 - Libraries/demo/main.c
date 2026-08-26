#include "trig.h"
#include <stdio.h>

int main(int argc, char *argv[]) {
    double angles[] = {0, 3.14159 / 4, 3.14159 / 2, 3.14159};

    printf("Using %s\n", trig_sin_impl());
    printf("Using %s\n", trig_cos_impl());

    for (int i = 0; i < sizeof(angles) / sizeof(*angles); i++) {
        printf("sin(%f) = %f\t", angles[i], trig_sin(angles[i]));
        printf("cos(%f) = %f\n", angles[i], trig_cos(angles[i]));
    }

    return 0;
}
