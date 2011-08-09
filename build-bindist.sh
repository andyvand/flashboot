#!/bin/sh
#
# $Id: build-bindist.sh,v 1.5 2007/12/30 10:07:02 jakob Exp $

mkdir bindist

DISTNAME=WRAP12
export TTYSPEED=38400
./build-kernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.image
./build-largekernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.large.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.large.image

DISTNAME=PCENGINES
export TTYSPEED=38400
./build-kernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.image
./build-largekernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.large.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.large.image

DISTNAME=COMMELL-LE564
export TTYSPEED=19200
./build-kernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.image
./build-largekernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.large.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.large.image

DISTNAME=GENERIC-RD
export TTYSPEED=9600
./build-kernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.image
./build-largekernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.large.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.large.image

DISTNAME=SOEKRIS4501
export TTYSPEED=19200
./build-kernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.image
./build-largekernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.large.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.large.image

DISTNAME=SOEKRIS4521
export TTYSPEED=19200
./build-kernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.image
./build-largekernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.large.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.large.image

DISTNAME=SOEKRIS4801
export TTYSPEED=19200
./build-kernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.image
./build-largekernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.large.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.large.image

DISTNAME=SOEKRIS5501
export TTYSPEED=19200
./build-kernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.image
./build-largekernel.sh ${DISTNAME}
cp obj/bsd.gz bindist/${DISTNAME}.large.bsd
./build-diskimage.sh image
gzip image
mv image.gz bindist/${DISTNAME}.large.image

DISTNAME=LIVECD
sh ./build-livecd.sh GENERIC-RD
mv obj/live_cd*.iso bindist/