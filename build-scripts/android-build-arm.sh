#! /bin/sh

"""
build the toold chain home with:
build/tools/make-standalone-toolchain.sh --platform=android-9 --install-dir=../android-9-toolchain
"""

NDK_HOME=~/dev/SDKs/android-9-toolchain-4.9
set -x
set -e
export CC=$NDK_HOME/bin/arm-linux-androideabi-gcc
export CFLAGS="-I$NDK_HOME/include -mthumb"
export LDFLAGS="-L$NDK_HOME/lib"
export AR=$NDK_HOME/bin/arm-linux-androideabi-ar
./waf distclean
./waf configure --with-target-platform android --disable-jack
./waf build --verbose
./waf install --destdir dist-android/arm
