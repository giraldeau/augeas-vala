AC_INIT([augeas-vala], 0.10.0)
AC_CONFIG_AUX_DIR([config])
AM_INIT_AUTOMAKE([foreign dist-bzip2])
AC_CONFIG_MACRO_DIR([config])
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

LT_INIT
AM_PROG_VALAC([0.7.0])

PKG_PROG_PKG_CONFIG
pkg_modules="glib-2.0 >= 2.24.1
             gobject-2.0 >= 2.24.1
             augeas >= 0.9.0"
PKG_CHECK_MODULES(AUGVALA, [$pkg_modules])
AC_SUBST(AUGVALA_CFLAGS)
AC_SUBST(AUGVALA_LIBS)

# be silent by default
AM_SILENT_RULES([yes])

AC_PROG_LIBTOOL
AC_PROG_CC
AM_PROG_CC_C_O
AC_CONFIG_FILES([Makefile
	tests/Makefile
])
AC_OUTPUT
