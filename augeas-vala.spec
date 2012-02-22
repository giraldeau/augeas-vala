Name:		augeas-vala
Version:	0.10.0
Release:	1%{?dist}
Summary:	Vala bindings for augeas.

Group:		System
License:	LGPLv2+
URL:		http://www.gitorious.org/valastuff/augeas-vala/

BuildRequires:  vala
Requires:       augeas-devel >= %{version}

%description
Vala bindings for augeas.

%prep
%setup -q

%build
make %{?_smp_mflags}

%check
make %{?_smp_mflags} test

%install
rm -rf %{buildroot}
install -d -m0755 %{buildroot}/%{_datadir}/vala/vapi/
install src/augeas.deps %{buildroot}/%{_datadir}/vala/vapi/
install src/augeas.vapi %{buildroot}/%{_datadir}/vala/vapi/

%files
%defattr(-,root,root,-)
%doc COPYING.LIB README TODO NEWS AUTHORS
%{_datadir}/vala/vapi/augeas.deps
%{_datadir}/vala/vapi/augeas.vapi

%changelog
* Wed Feb 22 2012 - Fabian Deutsch <fabiand@fedoraproject.org> - 0.10.0-1
- Initial version


