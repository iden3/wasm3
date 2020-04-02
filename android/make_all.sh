#!/bin/sh

set -ex

#NDK_HOME="/mnt/data/dev/app/Android/Sdk/ndk-bundle"

API=29
for arch in arm64-v8a armeabi-v7a x86 x86_64; do
    cmake .. \
        -DCMAKE_TOOLCHAIN_FILE=${NDK_HOME}/build/cmake/android.toolchain.cmake \
        -DCMAKE_BUILD_TYPE=RELEASE \
        -DANDROID_PLATFORM=android-$API \
        -DANDROID_NATIVE_API_LEVEL=$API \
        -D__ANDROID_API__=$API \
        -DANDROID_ABI=$arch
    make clean
    make -j 4
    mkdir -p android/$arch
    cp libm3.a android/$arch
done
