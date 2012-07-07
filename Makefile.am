ACLOCAL_AMFLAGS = -I config

vapi_dir := /vala/vapi
vapi_dest := $(DESTDIR)$(datadir)$(vapi_dir)

#SUBDIRS = src tests
EXTRA_DIST = src

install-data-local:
	test -z "$(vapi_dest)" || $(MKDIR_P) "$(vapi_dest)"
	$(INSTALL_SCRIPT) -m 0755 src/augeas.vapi "$(vapi_dest)"
	$(INSTALL_SCRIPT) -m 0755 src/augeas.deps "$(vapi_dest)"

uninstall-local:
	rm -f "$(vapi_dest)/augeas.vapi"
	rm -f "$(vapi_dest)/augeas.deps"


