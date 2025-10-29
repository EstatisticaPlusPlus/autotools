AC_INIT([epp], [54.59])

m4_include([m4/checks.m4])

AC_PROG_CC
AC_PROG_FC

bcc=2
mb=1
bbb=0

define_c_sizes
define_fortran_sizes

AC_MSG_NOTICE(epp: $epp_cv_sizeof_integer)

# compare_sizes([c_int],
#               [$ac_cv_sizeof_int],
#               [fortan_int],
#               [$epp_cv_sizeof_integer])

# compare_sizes([bcc], [$bcc], [bbb], [$bbb])
# compare_sizes([bcc], [$bcc], [mb], [$mb])
# compare_sizes([bbb], [$bbb], [mb], [$mb])

AC_OUTPUT
