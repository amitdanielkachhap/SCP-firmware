#
# Arm SCP/MCP Software
# Copyright (c) 2017-2018, Arm Limited and Contributors. All rights reserved.
#
# SPDX-License-Identifier: BSD-3-Clause
#

BS_FIRMWARE_CPU := cortex-m3
BS_FIRMWARE_HAS_MULTITHREADING := no
BS_FIRMWARE_HAS_NOTIFICATION := yes
BS_FIRMWARE_MODULE_HEADERS_ONLY := timer \
                                   power_domain
BS_FIRMWARE_MODULES := ppu_v0 \
                       ppu_v1 \
                       pl011 \
                       log \
                       gtimer \
                       msys_rom \
                       bootloader \
                       system_pll \
                       css_clock \
                       pik_clock \
                       clock \
                       sds
BS_FIRMWARE_SOURCES := config_log.c \
                       config_timer.c \
                       config_msys_rom.c \
                       config_sds.c \
                       config_bootloader.c \
                       config_system_pll.c \
                       config_css_clock.c \
                       config_pik_clock.c \
                       config_clock.c \
                       sgm775_core.c \
                       config_ppu_v0.c \
                       config_ppu_v1.c

include $(BS_DIR)/firmware.mk
