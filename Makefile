BUILDROOT = ../buildroot
TARGET = rpi3

all: init

init:
	$(MAKE) BR2_EXTERNAL=$(CURDIR) recorder_$(TARGET)_defconfig -C $(BUILDROOT)

.PHONY: all init
