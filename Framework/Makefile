ARCHS = arm64 arm64e

TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

FRAMEWORK_NAME = Cadmus

$(FRAMEWORK_NAME)_FILES = $(wildcard *.x)
$(FRAMEWORK_NAME)_PUBLIC_HEADERS = $(wildcard *.h)
$(FRAMEWORK_NAME)_FRAMEWORKS = AudioToolbox
$(FRAMEWORK_NAME)_INSTALL_PATH = /usr/lib
$(FRAMEWORK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/framework.mk