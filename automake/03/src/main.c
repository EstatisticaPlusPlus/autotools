#include "config.h"
#include <stdio.h>

#include "funcs.h"

int main(int argc, char *argv[]) {
    double angles[] = {0, 3.14159 / 4, 3.14159 / 2, 3.14159};

    printf("Using %s\n", sin_impl_name());
    printf("Using %s\n", cos_impl_name());

    for (int i = 0; i < sizeof(angles) / sizeof(*angles); i++) {
        printf("sin(%f) = %f\t", angles[i], sin_func(angles[i]));
        printf("cos(%f) = %f\n", angles[i], cos_func(angles[i]));
    }

    return 0;
}
