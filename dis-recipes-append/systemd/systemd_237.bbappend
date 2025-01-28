SRC_URI = "git://github.com/systemd/systemd.git;protocol=https;branch=main"

SRC_URI += "file://touchscreen.rules \
           file://00-create-volatile.conf \
           file://init \
           file://0001-Hide-__start_BUS_ERROR_MAP-and-__stop_BUS_ERROR_MAP.patch \
           file://0001-Use-getenv-when-secure-versions-are-not-available.patch \
           file://0002-binfmt-Don-t-install-dependency-links-at-install-tim.patch \
           file://0003-use-lnr-wrapper-instead-of-looking-for-relative-opti.patch \
           file://0004-implment-systemd-sysv-install-for-OE.patch \
           file://0005-rules-whitelist-hd-devices.patch \
           file://0006-Make-root-s-home-directory-configurable.patch \
           file://0007-Revert-rules-remove-firmware-loading-rules.patch \
           file://0008-Revert-udev-remove-userspace-firmware-loading-suppor.patch \
           file://0009-remove-duplicate-include-uchar.h.patch \
           file://0010-check-for-uchar.h-in-meson.build.patch \
           file://0011-socket-util-don-t-fail-if-libc-doesn-t-support-IDN.patch \
           file://0012-rules-watch-metadata-changes-in-ide-devices.patch \
           file://0013-add-fallback-parse_printf_format-implementation.patch \
           file://0014-src-basic-missing.h-check-for-missing-strndupa.patch \
           file://0015-don-t-fail-if-GLOB_BRACE-and-GLOB_ALTDIRFUNC-is-not-.patch \
           file://0016-src-basic-missing.h-check-for-missing-__compar_fn_t-.patch \
           file://0017-Include-netinet-if_ether.h.patch \
           file://0018-check-for-missing-canonicalize_file_name.patch \
           file://0019-Do-not-enable-nss-tests-if-nss-systemd-is-not-enable.patch \
           file://0020-test-hexdecoct.c-Include-missing.h-for-strndupa.patch \
           file://0021-test-sizeof.c-Disable-tests-for-missing-typedefs-in-.patch \
           file://0022-don-t-use-glibc-specific-qsort_r.patch \
           file://0023-don-t-pass-AT_SYMLINK_NOFOLLOW-flag-to-faccessat.patch \
           file://0024-comparison_fn_t-is-glibc-specific-use-raw-signature-.patch \
           file://0025-Define-_PATH_WTMPX-and-_PATH_UTMPX-if-not-defined.patch \
           file://0026-Use-uintmax_t-for-handling-rlim_t.patch \
           file://0027-remove-nobody-user-group-checking.patch \
           file://0028-add-missing-FTW_-macros-for-musl.patch \
           file://0029-nss-mymachines-Build-conditionally-when-ENABLE_MYHOS.patch \
           file://0030-fix-missing-of-__register_atfork-for-non-glibc-build.patch \
           file://0031-fix-missing-ULONG_LONG_MAX-definition-in-case-of-mus.patch \
           file://0032-memfd.patch \
           file://0033-basic-macros-rename-noreturn-into-_noreturn_-8456.patch \
           file://libmount.patch \
           file://0034-Fix-format-truncation-compile-failure-by-typecasting.patch \
           file://0035-Define-glibc-compatible-basename-for-non-glibc-syste.patch \
           file://0001-core-when-deserializing-state-always-use-read_line-L.patch \
           file://0001-chown-recursive-let-s-rework-the-recursive-logic-to-.patch \
           file://0001-dhcp6-make-sure-we-have-enough-space-for-the-DHCP6-o.patch \
           file://0024-journald-do-not-store-the-iovec-entry-for-process-co.patch \
           file://0025-journald-set-a-limit-on-the-number-of-fields-1k.patch \
           file://0026-journal-remote-set-a-limit-on-the-number-of-fields-i.patch \
           file://0027-journal-fix-out-of-bounds-read-CVE-2018-16866.patch \
           file://0001-tmpfiles-don-t-resolve-pathnames-when-traversing-rec.patch \
           file://0002-Make-tmpfiles-safe.patch \
           file://CVE-2019-6454.patch \
           file://sd-bus-if-we-receive-an-invalid-dbus-message-ignore-.patch \
           "

SRC_URI_append_qemuall = " file://0001-core-device.c-Change-the-default-device-timeout-to-2.patch"

SRC_URI_append_libc-musl_qemux86 = " file://0001-Remove-fstack-protector-flags-to-workaround-musl-bui.patch"
SRC_URI_append_libc-musl_qemuppc = " file://0001-Remove-fstack-protector-flags-to-workaround-musl-bui.patch"