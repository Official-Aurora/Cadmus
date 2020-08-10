include $(THEOS)/makefiles/common.mk

SUBPROJECTS += Framework

include $(THEOS_MAKE_PATH)/aggregate.mk

before-all::
	sh $(wildcard clean.sh)