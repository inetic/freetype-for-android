
#android create lib-project \
	--name freetype2 \
	--target 1 \
	--path . \
	--package com.android.freetype2

# LOCAL_PATH points to directory
# where this Android.mk is located.
LOCAL_PATH := $(call my-dir)

LOCAL_ARM_MODE := arm

TOP_DIR  := freetype2
BASE_DIR := /base

SOURCES := truetype/truetype.c \
	         autofit/autofit.c   \
	         base/ftbase.c       \
	         base/ftinit.c       \
	         type1/type1.c       \
	         cid/type1cid.c      \
	         cff/cff.c           \
	         pfr/pfr.c           \
	         bdf/bdf.c           \
	         smooth/smooth.c     \
	         sfnt/sfnt.c         \
	         raster/raster.c     \
	         type42/type42.c     \
	         winfonts/winfnt.c   \
	         psnames/psmodule.c  \
	         pcf/pcf.c           \
	         psaux/psaux.c       \
	         pshinter/pshinter.c \
	         gzip/ftgzip.c \
	         lzw/ftlzw.c \
	         base/ftsystem.c

SOURCES := $(addprefix ../freetype2/src/,$(SOURCES))

include $(CLEAR_VARS)

LOCAL_MODULE    		:= libfreetype
LOCAL_SRC_FILES 		:= $(SOURCES)
LOCAL_C_INCLUDES 		:= freetype2/include
#LOCAL_LDLIBS    		:= -landroid #?
LOCAL_CFLAGS        := -O2 -fPIC -DPIC -DFT2_BUILD_LIBRARY

include $(BUILD_STATIC_LIBRARY)

