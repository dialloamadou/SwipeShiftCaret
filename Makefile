TARGET = iphone:clang::4.0
ARCHS = armv7
include theos/makefiles/common.mk

TWEAK_NAME = SwipeShiftCaret
SwipeShiftCaret_FILES = SwipeShiftCaret.x
SwipeShiftCaret_FRAMEWORKS = UIKit
# ADDITIONAL_CFLAGS = -DDEBUG

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
