check_PROGRAMS = test-augeas

TESTS = $(check_PROGRAMS)
DISTCLEANFILES = test-augeas.c test_augeas_vala.stamp

AM_VALAFLAGS = --debug --verbose --save-temps --pkg augeas --vapidir ../src

test_augeas_SOURCES = test-augeas.vala
test_augeas_LDADD = $(AUGVALA_LIBS)
test_augeas_CFLAGS = $(AUGVALA_CFLAGS)
