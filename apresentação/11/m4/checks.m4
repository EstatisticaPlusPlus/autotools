# epp_check_fortran_type_size([type], [macro_name])
AC_DEFUN([epp_check_fortran_type_size], [

    AC_MSG_CHECKING([for size of Fortran $1])

    # Create a shell-safe name for the cache variable.
    _epp_cv_var_name=epp_cv_sizeof_[]translit([$2], [ *], [_])

    AC_LANG_PUSH([Fortran])
    AC_COMPUTE_INT(
      [$_epp_cv_var_name],
      [AC_LANG_SOURCE(
        [[
          PROGRAM main
            IMPLICIT NONE
            $1 :: var
            PRINT *, SIZEOF(var)
          END PROGRAM main
        ]]
      )],
      []
      []
    )
    AC_LANG_POP([Fortran])

    # M4 macro hygiene: undefine temporary variables.
    m4_undefine([_epp_cv_var_name])
])

AC_DEFUN([define_fortran_sizes], [
    epp_check_fortran_type_size([INTEGER], [integer]) 
])

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

