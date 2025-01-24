# x86_64 emulator specific definitions
TARGET_CPU_ABI := x86_64
TARGET_ARCH := x86_64
TARGET_ARCH_VARIANT := x86_64
TARGET_2ND_ARCH_VARIANT := x86_64

include device/generic/goldfish/board/BoardConfigCommon.mk

BOARD_USERDATAIMAGE_PARTITION_SIZE := 576716800


TARGET_SYSTEM_PROP += device/tharow/angkorwat/system.prop
TARGET_VENDOR_PROP += device/tharow/angkorwat/vendor.prop