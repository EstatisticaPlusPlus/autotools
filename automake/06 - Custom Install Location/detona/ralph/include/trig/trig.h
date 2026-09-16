#ifndef TRIG_H
#define TRIG_H

#ifdef __cplusplus
extern "C" {
#endif

double trig_sin(double t);
double trig_cos(double t);

const char *trig_sin_impl();
const char *trig_cos_impl();

#ifdef __cplusplus
}
#endif

#endif // !TRIG_H
