bin_PROGRAMS = main
main_SOURCES = main.c funcs.h

if HAVE_SIN
main_SOURCES += sin_system.c
else
main_SOURCES += sin_approx.c
endif

if HAVE_COS
main_SOURCES += cos_system.c
else
main_SOURCES += cos_approx.c
endif
