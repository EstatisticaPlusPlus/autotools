#include "trig.h"
#include <math.h>
#include <stdio.h>

#define EPSILON 1e-6

int main(void) {
    double val = 3.14159 / 2;
    double got = trig_sin(val);
    double expected = sin(val);

    if (fabs(got - expected) > EPSILON) {
        fprintf(stderr, "FAIL: trig_sin(%f) = %f, expected %f\n", val, got,
                expected);
        return 1;
    }

    printf("PASS: trig_sin\n");
    return 0;
}
