AM_CPPFLAGS = -I$(top_srcdir)/include

check_PROGRAMS = test_sin test_cos

test_sin_SOURCES = test_sin.c
test_sin_LDADD = $(top_builddir)/src/libtrig.a

test_cos_SOURCES = test_cos.c
test_cos_LDADD = $(top_builddir)/src/libtrig.a

TESTS = $(check_PROGRAMS)
