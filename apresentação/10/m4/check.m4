AC_DEFUN(check_char_sign, [
    AC_MSG_CHECKING([if char is signed])
    AC_RUN_IFELSE([AC_LANG_PROGRAM([],
    [[
        #include <limits.h>

        int main(int argc, char *argv[]) {
            if(CHAR_MIN < 0) {
                return 1;
            } else {
                return 0;
            }
    ]]
    )],
    [AC_MSG_RESULT(signed)],
    [AC_MSG_RESULT(unsigned)])
])
