#!/usr/bin/env bash

set -ex

cd x264
./configure \
	--prefix=../dist \
	--exec-prefix=../dist \
	--enable-static \
	--enable-pic \
	--enable-strip \
	--disable-cli \
	--disable-opencl \
	$X264_EXTRA_ARGS

make -j$NPROCS
make install
