LOCAL_PATH := $(call my-dir)
BYPASS_ROOT := ../../../../../..
BYPASS_SRC := $(BYPASS_ROOT)/src
BYPASS_DEP := $(BYPASS_ROOT)/dep

include $(CLEAR_VARS)

LOCAL_MODULE	:= bypass
LOCAL_SRC_FILES := \
	bypass.cpp \
	$(BYPASS_SRC)/parser.cpp \
	$(BYPASS_SRC)/document.cpp \
	$(BYPASS_SRC)/element.cpp \
	$(BYPASS_DEP)/libsoldout/markdown.c \
	$(BYPASS_DEP)/libsoldout/buffer.c \
	$(BYPASS_DEP)/libsoldout/array.c
	
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(BYPASS_DEP)/libsoldout
LOCAL_C_INCLUDES += $(LOCAL_PATH)/$(BYPASS_SRC)
LOCAL_C_INCLUDES += $(BYPASS_INCLUDE_PATH)

include $(BUILD_SHARED_LIBRARY)
