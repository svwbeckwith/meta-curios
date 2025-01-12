DESCRIPTION = "Library for manipulating FITS data files"
HOMEPAGE = "https://heasarc.gsfc.nasa.gov/fitsio/"
LICENSE = "CLOSED"

DEPENDS = "zlib bzip2 curl"

inherit autotools-brokensep pkgconfig

#PR = "r1"
LIC_FILES_CHKSUM = ""
#LIC_FILES_CHKSUM = "file://licenses/License.txt;md5=77856e8a5492e2119200b3401a8e7966"

SRC_URI = " git://github.com/HEASARC/cfitsio.git;protocol=https;branch=cfitsio4_5_0"

SRCREV = "3b6fc6feea25c6e8926645e06570b16f6e15cfeb"

#S = "${UNPACKDIR}/git"
S = "${WORKDIR}/git"

EXTRA_OECONF += "--without-fortran"

inherit cmake

do_install_append () {
	chown -R root:root ${D}${prefix}
}
