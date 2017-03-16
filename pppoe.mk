ifeq ($(BOARD_USE_PPPOE),true)

PPPOE_PATH := vendor/rockchip/pppoe

SOURCE_PPPOE_CONF_DIR := $(PPPOE_PATH)/configs
TARGET_PPPOE_CONF_DIR := system/etc/ppp

PRODUCT_COPY_FILES += \
    $(SOURCE_PPPOE_CONF_DIR)/pap-secrets:$(TARGET_PPPOE_CONF_DIR)/pppoe-secrets \
    $(SOURCE_PPPOE_CONF_DIR)/pppoe.conf:$(TARGET_PPPOE_CONF_DIR)/pppoe.conf

SOURCE_PPPOE_SCRIPT_DIR := $(PPPOE_PATH)/scripts
TARGET_PPPOE_SCRIPT_DIR := system/bin

PRODUCT_COPY_FILES += \
    $(SOURCE_PPPOE_SCRIPT_DIR)/pppoe-stop:$(TARGET_PPPOE_SCRIPT_DIR)/pppoe-stop \
    $(SOURCE_PPPOE_SCRIPT_DIR)/pppoe-connect:$(TARGET_PPPOE_SCRIPT_DIR)/pppoe-connect \
    $(SOURCE_PPPOE_SCRIPT_DIR)/pppoe-setup:$(TARGET_PPPOE_SCRIPT_DIR)/pppoe-setup \
    $(SOURCE_PPPOE_SCRIPT_DIR)/pppoe-start:$(TARGET_PPPOE_SCRIPT_DIR)/pppoe-start \
    $(SOURCE_PPPOE_SCRIPT_DIR)/pppoe-status:$(TARGET_PPPOE_SCRIPT_DIR)/pppoe-status \
    $(SOURCE_PPPOE_SCRIPT_DIR)/busybox1.11:$(TARGET_PPPOE_SCRIPT_DIR)/busybox1.11

PRODUCT_PACKAGES += \
    pppoe \
    pppoe-sniff \
    pppoe-repay

endif # BOARD_USE_PPPOE
