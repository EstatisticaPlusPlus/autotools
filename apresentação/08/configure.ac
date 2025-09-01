AC_INIT([epp], [2.78])

m4_include([m4/check.m4])

AC_CHECK_SIZEOF([int])
AC_CHECK_SIZEOF([int *])
AC_CHECK_SIZEOF([double])
AC_CHECK_SIZEOF([double *])
AC_CHECK_SIZEOF([float])
AC_CHECK_SIZEOF([float *])
AC_CHECK_SIZEOF([char])
AC_CHECK_SIZEOF([char *])
AC_CHECK_SIZEOF([long])
AC_CHECK_SIZEOF([long *])
AC_CHECK_SIZEOF([long long])
AC_CHECK_SIZEOF([long long *])
AC_CHECK_SIZEOF([short])
AC_CHECK_SIZEOF([short *])
AC_CHECK_SIZEOF([void])
AC_CHECK_SIZEOF([void *])
AC_CHECK_SIZEOF([BBB])
AC_CHECK_SIZEOF([BBB *])
AC_CHECK_SIZEOF([MB])
AC_CHECK_SIZEOF([MB *])

AC_LANG_PUSH([Fortran])

check_fc_size([integer])
check_fc_size([real])
check_fc_size([real64])
check_fc_size([complex])

AC_LANG_POP([Fortran])

AC_OUTPUT
