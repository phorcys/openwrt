#!/bin/sh

#get gcc-12 loongarch-12 branch tarball
mkdir -p tmp/gcc/
wget "https://api.github.com/repos/loongson/gcc/tarball/loongarch-12" -O - | tar -C tmp/gcc/ --transform="s/loongson-gcc-[a-z,0-9]*/gcc-12.0.0/g"  --warning=no-all -zxf -
tar -C tmp/gcc/ -cOf - . |xz -T0 > dl/gcc-12.0.0.tar.xz
hash=`sha256sum dl/gcc-12.0.0.tar.xz|awk '{print $1}'`
oldhash=`cat toolchain/gcc/common.mk |grep -A1 "12.0"|grep HASH|awk -F "=" '{print $2}'`
echo "gcc-12-loongarch-next, oldhash : $oldhash, new hash $hash"
sed -i -e "s/$oldhash/$hash/g" toolchain/gcc/common.mk


#get glibc loongarch_2_33_for_upstream branch patch
wget -H 'Accept: application/vnd.github.v3.patch' "https://github.com/loongson/glibc/compare/glibc-2.33.9000...loongarch_2_33_dev.patch" -O toolchain/glibc/patches/999-support-loongarch.patch

#get kernel loongarch-next branch tarball
mkdir -p tmp/linux/
wget "https://api.github.com/repos/loongson/linux/tarball/loongarch-next" -O - |tar -C tmp/linux --transform="s/loongson-linux-[a-z,0-9]*/linux-5.14.0/g"  -zxf -
tar -C tmp/linux/ -cOf - .|xz -T0 > dl/linux-5.14.0.tar.xz
hash=`sha256sum dl/linux-5.14.0.tar.xz|awk '{print $1}'`
oldhash=`cat include/kernel-version.mk |grep "HASH-5.14.0"|awk -F "=" '{print $2}'`
echo "kernel looarch-next old hash :$oldhash  new hash :$hash"
sed -i -e "s/$oldhash/$hash/g" include/kernel-version.mk

#get binutils loongarch_2_37 branch tarball (not patch file because it's a full package with gdb)
mkdir -p tmp/binutils/
wget "https://api.github.com/repos/loongson/binutils-gdb/tarball/loongarch-2_37" -O - | tar -C tmp/binutils --transform="s/loongson-binutils-gdb-[a-z,0-9]*/binutils-2.37/g"  -zxf -
tar -C tmp/binutils/ -cOf - .|xz -T0 > dl/binutils-2.37.tar.xz
hash=`sha256sum dl/binutils-2.37.tar.xz|awk '{print $1}'`
oldhash=`cat toolchain/binutils/Makefile | grep -A1 "2.37"|grep HASH|awk -F "=" '{print $2}'`
echo "bintuils-gdb loongarch-2_37  old hash :$oldhash new hash:$hash"
sed -i -e "s/$oldhash/$hash/g" toolchain/binutils/Makefile

rm -rf tmp/gcc
rm -rf tmp/linux
rm -rf tmp/binutils
