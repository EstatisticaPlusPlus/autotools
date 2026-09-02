#include "trig.h"

const char *trig_cos_impl() { return "approximation cos"; }
double trig_cos(double t) { return 1 - ((t * t) / 2); }
