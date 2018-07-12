# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=null androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk product.version=PD1602_A_3.11.7 androidboot.securebootkey=alpha androidboot.securebootkeyhash=60ba997fef6da9f05885fa11f1dd6d2a90d052a257a09c2075d7246cc73c0d43 androidboot.securebootkeyver=1 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel

BOARD_MKBOOTIMG_ARGS := --dt device/vivo/x7/prebuilt/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x00000100

# Filesystem
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 58495310848
