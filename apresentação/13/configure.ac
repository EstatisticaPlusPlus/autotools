AC_INIT([epp], [442413.39])
AM_INIT_AUTOMAKE([foreign])

AC_PROG_CC

AC_CHECK_LIB([m], [sin], [LIBS="$LIBS -lm"; AC_DEFINE([HAVE_SIN], [1], [Define 1 para caso sin esteja presente])])
AC_CHECK_LIB([m], [cos], [LIBS="$LIBS -lm"; AC_DEFINE([HAVE_COS], [1], [Define 1 para caso cos esteja presente])])

AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([
                 Makefile
                 src/Makefile
                 ])

AC_OUTPUT
