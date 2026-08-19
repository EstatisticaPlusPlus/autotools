#include "funcs.h"

char *cos_impl_name() { return "approximation cos"; }
double cos_func(double t) { return 1 - ((t * t) / 2); }
