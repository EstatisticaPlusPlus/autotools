AC_DEFUN(check_char_sign, [
    AC_MSG_CHECKING([if char is signed])
    AC_RUN_IFELSE([AC_LANG_PROGRAM([],
    [[
        #include <stdio.h>

        int main(int argc, char *argv[]) {
            char c = 0;
            --c;

            if (c == -1) {
                return 1;
            } else {
                return 0;
            }
        }
    ]]
    )],
    [AC_MSG_RESULT(signed)],
    [AC_MSG_RESULT(unsigned)])
])
