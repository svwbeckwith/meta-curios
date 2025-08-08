DESCRIPTION = "Flight Software for CuRIOS-ED"
HOMEPAGE = ""
LICENSE = "CLOSED"

DEPENDS = "zlib bzip2 curl openssl libusb cfitsio monit"

RDEPENDS:${PN} += "bash"

# Overrides
SOLIBS = ".so"
FILES_SOLIBSDEV = ""

inherit autotools-brokensep pkgconfig systemd

#PR = "r1"
LIC_FILES_CHKSUM = ""
#LIC_FILES_CHKSUM = "file://licenses/License.txt;md5=77856e8a5492e2119200b3401a8e7966"

# get source code from  GitHub
SRC_URI = "git://git@github.com/svwbeckwith/CuRIOS.git;protocol=ssh;branch=main"

# commit(optional)
SRCREV = "6e0c4c2294289fab224a2ebaa4dad026e122eb72"

# Yocto will clone the source code to ${WORKDIR}/git
S = "${WORKDIR}/git"

SYSTEM_AUTO_ENABLE = "enable"
SYSTEM_SERVICE:${PN} = "curiosed_control.service"

inherit cmake

# install
do_install:append() {
    # create dirs
    install -d ${D}${bindir}
    install -d ${D}${libdir}
    install -d ${D}/opt
    install -d ${D}/data
    install -d ${D}/home/root
    install -d ${D}${sysconfdir}/systemd
    install -d ${D}${sysconfdir}/systemd/network
    install -d ${D}${sysconfdir}/inspire_sat
    install -d ${D}${sysconfdir}/flightsim

    # copy lib files
    install -m 0755 ${S}/lib/libatikcameras.so ${D}${libdir}
    install -m 0755 ${S}/lib/libflightapi.a ${D}${libdir}

    # rootfs files
    install -m 0755 ${S}/files/q7s/home/root/.profile ${D}/home/root/
    install -m 0644 ${S}/files/q7s/etc/systemd/network/05-eth0.network ${D}${sysconfdir}/systemd/network/

    # flightsim configs
    cp -r ${S}/files/q7s/etc/flightsim/* ${D}${sysconfdir}/flightsim/

    # systemd service
    install -d ${D}${sysconfdir}/systemd/system
    install -m 0644 ${S}/files/q7s/etc/systemd/system/curiosed_control.service ${D}${sysconfdir}/systemd/system/
}

FILES:${PN} += " \
  /opt \
  /data \
  ${bindir}/* \
  ${libdir}/* \
  /home \
  /home/root \
  /home/root/.profile \
  /home/root/* \
  ${sysconfdir}/flightsim/* \
  ${sysconfdir} \
  ${sysconfdir}/systemd \
  ${sysconfdir}/systemd/network \
  ${sysconfdir}/systemd/network/* \
  ${sysconfdir}/systemd/system/* \
"

REQUIRED_DISTRO_FEATURES= "systemd"

#
#  /etc/dropbear/* \
#
