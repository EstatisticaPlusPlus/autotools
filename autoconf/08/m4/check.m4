AC_DEFUN(check_fc_size, [

    AC_MSG_CHECKING([size of $1])
    AC_RUN_IFELSE([AC_LANG_PROGRAM([],
    [[      $1 :: x
            print *, storage_size(x) / 8
    ]])],
    [AC_MSG_RESULT($ac_runval)],
    [AC_MSG_RESULT(unknown)])
])
