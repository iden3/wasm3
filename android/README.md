# Crossbuilding for Android

First export the location of the Android ndk
```
export NDK_HOME="/mnt/data/dev/app/Android/Sdk/ndk-bundle"
```

Then build for all targets
```
mkdir build
cd build
../make_all.sh
```

The static libraries will be in `build/android`
