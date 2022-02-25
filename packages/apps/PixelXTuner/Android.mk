include $(CLEAR_VARS)
LOCAL_MODULE := PixelXTuner
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SYSTEM_EXT_MODULE := true
#LOCAL_OPTIONAL_USES_LIBRARIES := androidx.window.extensions androidx.window.sidecar
#LOCAL_MODULE_TARGET_ARCH := arm arm64 x86_64
#my_src_arch := $(call get-prebuilt-src-arch,$(LOCAL_MODULE_TARGET_ARCH))
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_REPLACE_PREBUILT_APK_INSTALLED := $(LOCAL_PATH)/$(LOCAL_SRC_FILES)
#LOCAL_PREBUILT_JNI_LIBS := $(my_src_arch)/libflutter.so $(my_src_arch)/libapp.so
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)