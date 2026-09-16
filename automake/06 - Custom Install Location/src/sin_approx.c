#include "trig.h"

const char *trig_sin_impl() { return "approximation sin"; }
double trig_sin(double t) { return t - ((t * t * t) / 6); }
