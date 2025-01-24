
PRODUCT_USE_DYNAMIC_PARTITIONS := true

BOARD_EMULATOR_DYNAMIC_PARTITIONS_SIZE ?= $(shell expr 1536 \* 1048576 )
BOARD_SUPER_PARTITION_SIZE := $(shell expr $(BOARD_EMULATOR_DYNAMIC_PARTITIONS_SIZE) + 8388608 )  # +8M

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Enable mainline checking for this excat product name
ifeq (angkorwat,$(TARGET_PRODUCT))
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := relaxed
endif

#DISABLE_DEXPREOPT_CHECK := true

PRODUCT_SDK_ADDON_SYS_IMG_SOURCE_PROP := \
    development/sys-img/images_x86_64_source.prop_template

$(call inherit-product, device/generic/goldfish/product/phone.mk)
#$(call inherit-product, vendor/gapps/x86_64/x86_64-vendor.mk)
$(call inherit-product, vendor/tharow/custom.mk)
$(call inherit-product, device/tharow/angkorwat/device.mk)
#$(call inherit-product, device/tharow/angkorwat/BoardConfig.mk)

PRODUCT_NAME := lineage_angkorwat
PRODUCT_DEVICE := angkorwat
PRODUCT_MANUFACTURER := tharow
PRODUCT_BRAND := tharow
PRODUCT_MODEL := tharow emu angkorwat

PRODUCT_GMS_CLIENTID_BASE := android-tharow
