include vendor/soni/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/soni/config/BoardConfigQcom.mk
endif

# Custom AVB Key
ifneq ($(filter OFFICIAL,$(CUSTOM_BUILD_TYPE)),)
ifeq ($(TARGET_USES_CUSTOM_AVB_KEY),true)
include vendor/soni/config/BoardConfigAvb.mk
endif
endif

include vendor/soni/config/BoardConfigSoong.mk

# Namespace for fwk-detect
TARGET_FWK_DETECT_PATH ?= hardware/qcom-caf/common
PRODUCT_SOONG_NAMESPACES += \
    $(TARGET_FWK_DETECT_PATH)/fwk-detect
