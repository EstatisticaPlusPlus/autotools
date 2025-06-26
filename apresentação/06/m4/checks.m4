AC_DEFUN([CHECK_CFLAG], [
    AC_REQUIRE([AC_PROG_CC])

    AC_LANG_PUSH([C])
    AC_MSG_CHECKING([if $CC accepts $1])
    old_CFLAGS="$CFLAGS"
    CFLAGS="$1"

    AC_COMPILE_IFELSE(
        [AC_LANG_PROGRAM([], [return 0;])],
        [AC_MSG_RESULT([yes])],
        [AC_MSG_RESULT([no])]
    )

    CFLAGS="$old_CFLAGS" # don't polute the CFLAGS var
    AC_LANG_POP([C])
])

AC_DEFUN([CHECK_CXXFLAG], [
    AC_REQUIRE([AC_PROG_CXX])

    AC_LANG_PUSH([C++])
    AC_MSG_CHECKING([if $CXX accepts $1])
    old_CXXFLAGS="$CXXFLAGS"
    CXXFLAGS="$1"

    AC_COMPILE_IFELSE(
        [AC_LANG_PROGRAM([], [return 0;])],
        [AC_MSG_RESULT([yes])],
        [AC_MSG_RESULT([no])]
    )

    CXXFLAGS="$old_CXXFLAGS" # don't polute the CXXFLAGS var
    AC_LANG_POP([C++])
])

AC_DEFUN([CHECK_FCFLAG], [
    AC_REQUIRE([AC_PROG_FC])

    AC_LANG_PUSH([Fortran])
    AC_MSG_CHECKING([if $FC accepts $1])
    old_FCFLAGS="$FCFLAGS"
    FCFLAGS="$1"

    AC_COMPILE_IFELSE(
        [AC_LANG_PROGRAM()],
        [AC_MSG_RESULT([yes])],
        [AC_MSG_RESULT([no])]
    )

    FCFLAGS="$old_FCFLAGS" # don't polute the FCFLAGS var
    AC_LANG_POP([Fortran])
])
