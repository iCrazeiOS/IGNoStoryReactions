ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = Instagram

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = IGNoStoryReactions

IGNoStoryReactions_FILES = Tweak.xm
IGNoStoryReactions_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
