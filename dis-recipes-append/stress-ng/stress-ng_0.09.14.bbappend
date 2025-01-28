SRC_URI = "git://github.com/ColinIanKing/stress-ng.git;protocol=https;branch=master \
           file://0002-stress-fcntl-fix-build-for-musl.patch \
          "
SRCREV = "583841275c2bb186af4d28d20497d1ef3885cc06"

S = "${WORKDIR}/git"