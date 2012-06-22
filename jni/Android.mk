
#android create lib-project --name freetype2 --target 1 --path . --package com.android.freetype2

# LOCAL_PATH points to directory
# where this Android.mk is located.
LOCAL_PATH := $(call my-dir)

#SOURCES := $(shell ls freetype2/src/truetype/*.c)

TOP_DIR  := freetype2
BASE_DIR := /base

SOURCES := truetype/truetype.c \
	         base/ftbase.c      \
	         base/ftsystem.c

SOURCES := $(addprefix ../freetype2/src/,$(SOURCES))

include $(CLEAR_VARS)

LOCAL_MODULE    		:= freetype2
LOCAL_SRC_FILES 		:= $(SOURCES)
LOCAL_C_INCLUDES 		:= freetype2/include
LOCAL_LDLIBS    		:= -landroid #?
LOCAL_CFLAGS        := -DFT2_BUILD_LIBRARY

include $(BUILD_SHARED_LIBRARY)

