#include "trig.h"
#include <math.h>

const char *trig_sin_impl() { return "system sin"; }
double trig_sin(double t) { return sin(t); }
