
##############################################################
#
# AESD-CHAR-DEVICE
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents#
AESD_ASSIGNMENTS_VERSION = bf9df4183a76e5057ba52d318dca7fb9e14d7fa8
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-ishassharmaa.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

AESD_CHAR_DRIVER_MODULE_SUBDIRS = aesd-char-driver

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_CHAR_DEVICE_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-device/aesdchar_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/aesd-char-device/aesdchar_unload $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchardevice-start-stop.sh $(TARGET_DIR)/etc/init.d/S97aesdchar
endef

$(eval $(kernel-module))
$(eval $(generic-package))
