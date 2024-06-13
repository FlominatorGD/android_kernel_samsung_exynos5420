#
# Makefile for the kernel mobicore drivers
#

GUD_ROOT_FOLDER := $(src)

# add our modules to kernel.
obj-$(CONFIG_MOBICORE_API) += mcKernelApi.o
obj-$(CONFIG_MOBICORE_DRIVER) += mcDrvModule.o

mcDrvModule-objs := MobiCoreDriver/logging.o \
		MobiCoreDriver/ops.o \
		MobiCoreDriver/mem.o \
		MobiCoreDriver/api.o \
		MobiCoreDriver/pm.o \
		MobiCoreDriver/main.o

mcKernelApi-objs := MobiCoreKernelApi/main.o \
		MobiCoreKernelApi/clientlib.o \
		MobiCoreKernelApi/device.o \
		MobiCoreKernelApi/session.o \
		MobiCoreKernelApi/connection.o

CFLAGS_MobiCoreDriver/main.o := -include $(GUD_ROOT_FOLDER)/build_tag.h

subdir-ccflags-y += -Wno-declaration-after-statement -DNDEBUG
subdir-ccflags-$(CONFIG_MOBICORE_DEBUG) += -DDEBUG
subdir-ccflags-$(CONFIG_MOBICORE_VERBOSE) += -DDEBUG_VERBOSE

# The original makefile used ls | tail -1 to pick a random folder for the
# platform configuration!!!
#
# For kicks, let's make a stand and pick one.  It doesn't matter right now
# anyway because they are the same.
MOBICORE_PLATFORM := EXYNOS_5_STD

# Use the available platform folder
subdir-ccflags-y += -I$(GUD_ROOT_FOLDER)/MobiCoreDriver/platforms/$(MOBICORE_PLATFORM)
# MobiCore Driver includes
subdir-ccflags-y += -I$(GUD_ROOT_FOLDER)/MobiCoreDriver/public
# MobiCore KernelApi required incldes
subdir-ccflags-y += -I$(GUD_ROOT_FOLDER)/MobiCoreKernelApi/include \
		-I$(GUD_ROOT_FOLDER)/MobiCoreKernelApi/public

obj-$(CONFIG_SOC_EXYNOS5422) += gud-exynos5422/
ifeq ($(CONFIG_SOC_EXYNOS5430_TBASE302), y)
	obj-$(CONFIG_SOC_EXYNOS5430_TBASE302) += gud-exynos5430_tbase302/
else ifeq ($(CONFIG_SOC_EXYNOS5430), y)
	obj-$(CONFIG_SOC_EXYNOS5430) += gud-exynos5430/
endif
ifeq ($(CONFIG_SOC_EXYNOS5433_TBASE302), y)
	obj-$(CONFIG_SOC_EXYNOS5433_TBASE302) += gud-exynos5433_tbase302/
else ifeq ($(CONFIG_SOC_EXYNOS5433), y)
	obj-$(CONFIG_SOC_EXYNOS5433) += gud-exynos5433/
endif
obj-$(CONFIG_TRUSTONIC_TRUSTED_UI) += TlcTui/
