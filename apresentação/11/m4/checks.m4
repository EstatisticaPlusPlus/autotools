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

AC_DEFUN([epp_fortran_sizeof], [
    AC_LANG_PUSH([Fortran])

    AC_MSG_CHECKING([size of Fortran $1])
    AC_RUN_IFELSE([AC_LANG_PROGRAM([], 
    [[ 
        program test
            $1 :: x
            integer :: i
            i = storage_size(x)/8
            open(99, file='conftest.out', status='unknown')
            write(99, '(I0)') i
            close(99)
        end program test
    ]])], 
    [eval $2=`cat conftest.out`],
    [AC_MSG_RESULT(Compile errored out)])

    AC_MSG_RESULT($$2)
    AC_LANG_POP([Fortran])
])
