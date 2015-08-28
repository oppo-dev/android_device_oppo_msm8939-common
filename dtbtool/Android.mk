ifeq ($(BOARD_KERNEL_SEPARATED_DT),true)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	dtbtool.c

LOCAL_CFLAGS += \
	-Wall

ifeq ($(TARGET_NEEDS_V3_DTB_IMAGE),true)
LOCAL_CFLAGS += -DUSES_V3_DTB
endif

## Hybrid v1/v2/v3 dtbTool. Use a different name to avoid conflicts with copies in other repos
LOCAL_MODULE := dtbToolOppo
LOCAL_MODULE_TAGS := optional

include $(BUILD_HOST_EXECUTABLE)
endif
