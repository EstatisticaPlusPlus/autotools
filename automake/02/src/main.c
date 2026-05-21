#include "config.h"
#include <stdio.h>

#ifdef HAVE_SIN
#include <math.h>
#define sin_func sin
#else
#include "approximations.h"
#define sin_func approx_sin
#endif

#ifdef HAVE_SIN
#include <math.h>
#define cos_func cos
#else
#include "approximations.h"
#define cos_func approx_cos
#endif

int main(int argc, char *argv[]) {
    double angles[] = {0, 3.14159 / 4, 3.14159 / 2, 3.14159};

#ifdef HAVE_SIN
    printf("Using built-in sin\n");
#else
    printf("Using approximation of sin\n");
#endif

#ifdef HAVE_COS
    printf("Using built-in cos\n");
#else
    printf("Using approximation of cos\n");
#endif

    for (int i = 0; i < sizeof(angles) / sizeof(*angles); i++) {
        printf("sin(%f) = %f\t", angles[i], sin_func(angles[i]));
        printf("cos(%f) = %f\n", angles[i], cos_func(angles[i]));
    }

    return 0;
}
