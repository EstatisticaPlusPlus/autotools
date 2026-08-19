#include "funcs.h"

char *sin_impl_name() { return "approximation sin"; }
double sin_func(double t) { return t - ((t * t * t) / 6); }
