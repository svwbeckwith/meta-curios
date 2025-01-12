SRC_URI = "git://github.com/systemd/systemd.git;protocol=https;branch=main"

SRC_URI += "file://0003-use-lnr-wrapper-instead-of-looking-for-relative-opti.patch \
            file://0027-remove-nobody-user-group-checking.patch \
            file://0001-Also-check-i386-i586-and-i686-for-ia32.patch \
            file://0001-Fix-to-run-efi_cc-and-efi_ld-correctly-when-cross-co.patch \
            "