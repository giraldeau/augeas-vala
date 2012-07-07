AC_INIT([augeas-vala], 0.10.0)
AC_CONFIG_AUX_DIR([config])
AM_INIT_AUTOMAKE([foreign dist-bzip2])
AC_CONFIG_MACRO_DIR([config])
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

LT_INIT
AM_PROG_VALAC([0.7.0])

PKG_PROG_PKG_CONFIG
PKG_CHECK_MODULES([AUGEAS], [augeas], [have_augeas="yes"], [have_augeas="no"])
AS_IF([test "x${have_augeas}" == "xno"], AC_MSG_ERROR([libaugeas is required and not found]))

# be silent by default
AM_SILENT_RULES([yes])

AC_PROG_LIBTOOL
AC_PROG_CC
AM_PROG_CC_C_O
AC_CONFIG_FILES([Makefile
])
AC_OUTPUT
