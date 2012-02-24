Name:       augeas-vala
Version:    0.10.0
Release:    1%{?dist}
Summary:    Vala bindings for augeas

Group:      Development/Languages
License:    LGPLv2+
URL:        http://www.gitorious.org/valastuff/augeas-vala/
# Source from https://gitorious.org/valastuff/augeas-vala/archive-tarball/0.10
Source0:    valastuff-augeas-vala-0.10.tar.gz
BuildArch:  noarch

BuildRequires:  vala
# FIXME the following tortures rpmlint, maybe rpmlint needs to modified for this case:
Requires:       augeas-devel >= %{version}

%description
Vala bindings for augeas.

%prep
%setup -q -n augeas-vala

%build
make %{?_smp_mflags}

%install
rm -rf %{buildroot}
install -d -m0755 %{buildroot}/%{_datadir}/vala/vapi/
install -m664 src/augeas.deps %{buildroot}/%{_datadir}/vala/vapi/
install -m664 src/augeas.vapi %{buildroot}/%{_datadir}/vala/vapi/

%check
make %{?_smp_mflags} test

%files
%defattr(-,root,root,-)
%doc COPYING.LIB README TODO NEWS AUTHORS
%{_datadir}/vala/vapi/augeas.deps
%{_datadir}/vala/vapi/augeas.vapi

%changelog
* Wed Feb 22 2012 - Fabian Deutsch <fabiand@fedoraproject.org> - 0.10.0-1
- Initial version

