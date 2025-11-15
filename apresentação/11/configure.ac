AC_INIT([epp], [54.59])

m4_include([m4/checks.m4])

AC_PROG_CC
AC_PROG_FC

bcc=2
mb=1
bbb=0

define_c_sizes
define_fortran_sizes

AC_MSG_NOTICE(epp: $epp_fortran_sizeof_integer)
AC_MSG_NOTICE(epp: $epp_fortran_sizeof_real)

epp_compare_sizes([c_int],
              [$ac_cv_sizeof_int],
              [fortan_int],
              [$epp_fortran_sizeof_integer])

epp_compare_sizes([bcc], [$bcc], [bbb], [$bbb])
epp_compare_sizes([bcc], [$bcc], [mb], [$mb])
epp_compare_sizes([bbb], [$bbb], [mb], [$mb])

AC_OUTPUT
