AC_INIT([2.781pp], [2.781])

m4_include([m4/checks.m4])

m4_define([c_compilers], [gcc cc clang icc])
m4_define([cpp_compilers], [clang])
m4_define([fortran_compilers], [gfortran])

m4_define([c_flags], [
    -O1
    -O2
    -O3
    -Wall 
    -Werror 
    -Wextra 
    -ansi
    -std=c89
    -std=c90
    -std=c9x
    -std=c99
    -std=c11
    -std=c1x
    -std=c18
    -std=c23
    -std=c2x
    -std=gnu89
    -std=gnu90
    -std=gnu99
    -std=gnu9x
    -std=gnu11
    -std=gnu1x
    -std=gnu17
    -std=gnu18
    -std=gnu23
    -std=gnu2x
    -g
    -ggdb3
    -Wall
    -Wextra
    -Werror
    -Wpedantic
    -fsanitize=address
    -fno-asm
    -fno-builtin
    -fno-builtin-function
    -fhosted
    -flax-vector-conversions
    -fms-extensions
    -fplan9-extensions
    -fsigned-bitfields
    -funsigned-bitfields
    -fno-signed-bitfields
    -fno-unsigned-bitfields
    -fsigned-char
    -funsigned-char
    -fstrict-flex-arrays
])

m4_define([cpp_flags], [
    -ansi
    -std=c++98
    -std=c++03
    -std=c++11
    -std=c++0x
    -std=c++14
    -std=c++1y
    -std=c++17
    -std=c++1z
    -std=c++20
    -std=c++2a
    -std=c++23
    -std=c++2b
    -std=c++26
    -std=c++2c
    -std=gnu++98
    -std=gnu++03
    -std=gnu++11
    -std=gnu++0x
    -std=gnu++14
    -std=gnu++1y
    -std=gnu++17
    -std=gnu++1z
    -std=gnu++20
    -std=gnu++2a
    -std=gnu++23
    -std=gnu++2b
    -std=gnu++2c
    -std=gnu++26
    -faligned-new
    -fchar8_t
    -fno-char8_t
    -fcheck-new
    -fconcepts
    -fcontracts
    -fcoroutines
    -fmodules
    -fno-modules
    -nostdinc++
])

m4_define([fortran_flags], [
    -std=gnu
    -std=f95
    -std=f2003
    -std=legacy
    -O3
    -O0
    -O1
    -O2
    -O3
    -g
    -cpp
    -ffree-form
    -ffixed-form
    -fd-lines-as-code
    -fd-lines-as-comment
    -fdefault-double-8
    -fdefault-integer-8
    -fdefault-real-8
    -fdollar-ok
    -fno-backslash
    -fimplicit-none
    -fcray-pointer
])

CHECK_COMPILERS_AND_FLAGS([C], [CFLAGS], [CC], c_compilers, c_flags)
CHECK_COMPILERS_AND_FLAGS([C++], [CXXFLAGS], [CXX], cpp_compilers, cpp_flags)
CHECK_COMPILERS_AND_FLAGS([Fortran], [FCFLAGS], [FC],
                          fortran_compilers, fortran_flags)

AC_OUTPUT
