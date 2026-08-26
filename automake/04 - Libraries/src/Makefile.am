lib_LIBRARIES = libtrig.a

libtrig_a_SOURCES = trig_internal.h


if HAVE_SIN
libtrig_a_SOURCES  += sin_system.c
else
libtrig_a_SOURCES  += sin_approx.c
endif

if HAVE_COS
libtrig_a_SOURCES  += cos_system.c
else
libtrig_a_SOURCES  += cos_approx.c
endif

AM_CPPFLAGS = -I$(top_srcdir)/include
