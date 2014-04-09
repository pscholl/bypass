LOCAL_PATH := $(call my-dir)
BYPASS_SRC := ../../../../src/

include $(CLEAR_VARS)

LOCAL_MODULE	:= bypass
LOCAL_SRC_FILES := \
	bypass.cpp \
	$(BYPASS_SRC)parser.cpp \
	$(BYPASS_SRC)document.cpp \
	$(BYPASS_SRC)element.cpp \
	../../../../dep/libsoldout/markdown.c \
	../../../../dep/libsoldout/buffer.c \
	../../../../dep/libsoldout/array.c

LOCAL_CFLAGS += -I$(LOCAL_PATH)/boost/include/
LOCAL_LDLIBS += -L$(LOCAL_PATH)/boost/lib/ -lboost_system -lboost_filesystem

LOCAL_CPPFLAGS += -fexceptions
LOCAL_CPPFLAGS += -frtti
	
LOCAL_C_INCLUDES:= ../../../dep/libsoldout ../../../src /opt/local/include /usr/local/include $(BYPASS_INCLUDE_PATH)

include $(BUILD_SHARED_LIBRARY)
