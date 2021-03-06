LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := dirtycow
LOCAL_SRC_FILES := \
	dirtycow.c
LOCAL_CFLAGS += -DDEBUG
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_SDK_VERSION := 21
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := cow-run-as
LOCAL_MODULE_FILE := run-as
LOCAL_SRC_FILES := \
	run-as.c
LOCAL_SDK_VERSION := 21
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := cow-exec
LOCAL_SRC_FILES := \
	cow-exec.c
LOCAL_CFLAGS += -DDEBUG
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_SDK_VERSION := 21
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := recowvery-applypatch
LOCAL_SRC_FILES := \
	recowvery-applypatch.c
LOCAL_CFLAGS += -DDEBUG
LOCAL_SHARED_LIBRARIES := liblog
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := recowvery-app_process64
LOCAL_SRC_FILES := \
	recowvery-app_process64.c
LOCAL_CFLAGS += -DDEBUG
LOCAL_SHARED_LIBRARIES := liblog libcutils libselinux
include $(BUILD_EXECUTABLE)
