AC_DEFUN([define_c_sizes], [
    AC_LANG_PUSH([C])
    AC_CHECK_SIZEOF(int)
    AC_CHECK_SIZEOF(long)
    AC_CHECK_SIZEOF(long long)
    AC_CHECK_SIZEOF(float)
    AC_CHECK_SIZEOF(double)
    AC_CHECK_SIZEOF(int *)
    AC_CHECK_SIZEOF(long *)
    AC_CHECK_SIZEOF(long long *)
    AC_CHECK_SIZEOF(float *)
    AC_CHECK_SIZEOF(double *)
    AC_LANG_POP([C])
])

AC_DEFUN([define_fortran_sizes], [
    epp_fortran_sizeof([integer], [epp_fortran_sizeof_integer])    
    epp_fortran_sizeof([real], [epp_fortran_sizeof_real])    
])

# $1 => Nome da primeira variável
# $2 => Valor da primeira variável
# $3 => Nome da segunda variável
# $4 => Valor da segunda variável
AC_DEFUN([epp_compare_sizes], [
    AC_MSG_NOTICE(Comparing sizes of $1 and $3)

    AS_IF(
    [test $2 -gt $4], [AC_MSG_RESULT($1 > $3)],
    [test $2 -lt $4], [AC_MSG_RESULT($1 < $3)],
    [AC_MSG_RESULT($1 == $3)]
    )
])

AC_DEFUN([epp_fortran_sizeof], [
    AC_LANG_PUSH([Fortran])

    AC_MSG_CHECKING([size of Fortran $1])
    AC_RUN_IFELSE([AC_LANG_PROGRAM([], 
    [[ 
            $1 :: x
            integer :: i
            i = storage_size(x)/8
            open(99, file='conftest.out', status='unknown')
            write(99, '(I0)') i
            close(99)
    ]])], 
    [eval $2=`cat conftest.out`],
    [AC_MSG_RESULT(Compile errored out. Check config.log for more info)])
    AC_MSG_RESULT($$2)
    AC_LANG_POP([Fortran])
])
