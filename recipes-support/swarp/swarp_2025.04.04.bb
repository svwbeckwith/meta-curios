DESCRIPTION = "SWARP software for image warping."
HOMEPAGE = ""
LICENSE = "CLOSED"

DEPENDS = "zlib bzip2 curl cfitsio"

inherit autotools-brokensep pkgconfig

#PR = "r1"
LIC_FILES_CHKSUM = ""

SRC_URI = "git://github.com/astromatic/swarp.git;branch=master"

SRCREV = "093dd218dd2cd194e7208a36e17e5da16381863e"

S = "${WORKDIR}/git"

do_install_append () {
	chown -R root:root ${D}${prefix}
}

