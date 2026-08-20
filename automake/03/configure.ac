AC_INIT([epp], [20.08])

AC_CONFIG_SRCDIR([src/main.c])

AM_INIT_AUTOMAKE([foreign])

AC_PROG_CC

AC_SEARCH_LIBS([sin], [m])
AC_SEARCH_LIBS([cos], [m])

AC_CHECK_FUNCS([sin cos])

AM_CONDITIONAL([HAVE_SIN], [test "x$ac_cv_func_sin" = "xyes"])
AM_CONDITIONAL([HAVE_COS], [test "x$ac_cv_func_cos" = "xyes"])

AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([
                 Makefile
                 src/Makefile
                 ])

AC_OUTPUT
