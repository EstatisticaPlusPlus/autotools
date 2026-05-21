AC_DEFUN([CHECK_C_STANDARD], [
  AC_MSG_CHECKING([for C$1 support])
  AC_COMPILE_IFELSE(
    [AC_LANG_SOURCE([
      #if !defined(__STDC_VERSION__) || __STDC_VERSION__ < $2
      #error "C$1 not supported"
      #endif
      int main(void) { return 0; }
    ])],
    [AC_MSG_RESULT([yes])],
    [AC_MSG_RESULT([no])]
  )
])

AC_DEFUN([CHECK_CXX_STANDARD], [
  AC_MSG_CHECKING([for C++$1 support])
  AC_COMPILE_IFELSE(
    [AC_LANG_SOURCE([
      #if !defined(__cplusplus) || __cplusplus < $2
      #error "C++$1 not supported"
      #endif
      int main() { return 0; }
    ])],
    [AC_MSG_RESULT([yes])],
    [AC_MSG_RESULT([no])]
  )
])
