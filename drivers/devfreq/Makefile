obj-$(CONFIG_PM_DEVFREQ)	+= devfreq.o
obj-$(CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND)	+= governor_simpleondemand.o
obj-$(CONFIG_DEVFREQ_GOV_SIMPLE_EXYNOS)	+= governor_simpleexynos.o
obj-$(CONFIG_DEVFREQ_GOV_SIMPLE_USAGE)	+= governor_simpleusage.o
obj-$(CONFIG_DEVFREQ_GOV_PERFORMANCE)	+= governor_performance.o
obj-$(CONFIG_DEVFREQ_GOV_PM_QOS)	+= governor_pm_qos.o
obj-$(CONFIG_DEVFREQ_GOV_POWERSAVE)	+= governor_powersave.o
obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+= governor_userspace.o

# DEVFREQ Drivers
ifdef CONFIG_ARM_EXYNOS5420_BUS_DEVFREQ
obj-y					+= exynos_ppmu.o
else ifdef CONFIG_ARM_EXYNOS5250_BUS_DEVFREQ
obj-y					+= exynos_ppmu.o
endif
obj-$(CONFIG_ARM_EXYNOS4_BUS_DEVFREQ)	+= exynos4_bus.o
obj-$(CONFIG_ARM_EXYNOS5422_BUS_DEVFREQ)	+= exynos5422_bus_mif.o exynos5422_bus_int.o exynos5422_bus_isp.o exynos5422_ppmu.o exynos_ppmu.o noc_probe.o
obj-$(CONFIG_ARM_EXYNOS5430_BUS_DEVFREQ)	+= exynos5430_bus_mif.o exynos5430_bus_int.o exynos5430_bus_disp.o exynos5430_bus_isp.o exynos5430_ppmu.o exynos_ppmu2.o
obj-$(CONFIG_ARM_EXYNOS5433_BUS_DEVFREQ)	+= exynos5433_bus.o exynos5_bus_mif.o exynos5_bus_int.o exynos5_bus_disp.o exynos5_bus_isp.o exynos5433_ppmu.o exynos_ppmu_fw.o FW_exynos_ppmu.o
obj-$(CONFIG_SAMSUNG_NOCP_MONITOR) += nocp_monitor.o monitor.o
obj-$(CONFIG_ARM_EXYNOS5250_BUS_DEVFREQ)	+= exynos5250_bus_mif.o exynos5250_bus_int.o
obj-$(CONFIG_ARM_EXYNOS5250_BUS_DEVFREQ)	+= exynos5_ppmu.o
obj-$(CONFIG_ARM_EXYNOS5410_BUS_DEVFREQ)	+= exynos5410_bus_int.o exynos5410_bus_mif.o exynos5410_volt_ctrl.o
obj-$(CONFIG_ARM_EXYNOS5410_BUS_DEVFREQ)	+= noc_probe.o
obj-$(CONFIG_ARM_EXYNOS5420_BUS_DEVFREQ)	+= exynos5420_bus_mif.o exynos5420_bus_int.o noc_probe.o
obj-$(CONFIG_ARM_EXYNOS5420_BUS_DEVFREQ)	+= exynos5420_ppmu.o
