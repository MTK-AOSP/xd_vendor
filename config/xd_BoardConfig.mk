# Kernel
include vendor/xd/config/BoardConfigKernel.mk

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/xd/config/BoardConfigQcom.mk
endif

# Soong
include vendor/xd/config/BoardConfigSoong.mk
