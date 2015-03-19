# aubio-android
Android NDK module for Aubio http://aubio.org

Includes precompiled static libraries for arm and arm-v7, built with NDK 9. 

Important: Set your NDK_MODULE_PATH with 
```bash
export NDK_MODULE_PATH=<path-to-modules>/aubio-android
```
add this to your .bashrc or .zshrc

Make sure your main Android.mk file has 

```make
LOCAL_STATIC_LIBRARIES += aubio
```
and, at the very end
```make
$(call import-module, aubio)
```
