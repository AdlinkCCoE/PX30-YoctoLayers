
SRCREV = "e83084b53d4e02f5fd25aad25b42ffd3108c7f15"
KERNEL_DEFCONFIG = "lec-px30_config"

do_configure_prepend() {
    cp ${WORKDIR}/${KERNEL_DEFCONFIG} ${S}/arch/arm64/configs/
    cp ${WORKDIR}/rockchip_wm8960.c ${S}/sound/soc/rockchip/
    cp ${S}/arch/arm64/configs/${KERNEL_DEFCONFIG} ${B}/.config
    cp ${S}/arch/arm64/configs/${KERNEL_DEFCONFIG} ${B}/../defconfig

}

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
        file://lec-px30_config \
	file://rockchip_wm8960.c \
        file://0001-Device-tree-for-LEC-PX30-A2.patch \
        file://0002-Added-ethernet-driver-support-for-LEC-PX30-A2.patch \
        file://0003-Added-mcp25xxfd-driver-support-for-LEC-PX30-A2.patch \
        file://0004-Added-LT9611-driver-support-for-LEC-PX30-A2.patch \
        file://0005-Modified-compatible-property-as-per-target-kernel-dt.patch \
        file://0006-Added-Sx150x-gpio-expander-suppport-for-LEC-PX30-A2.patch \
        file://0007-Added-SPI-chip-select-enable-disable-support-for-SPI.patch \
	file://0008-Modified-Boot-Arguments-to-mount-fileystem-from-SD-c.patch \
	file://0009-Added-Edimax-USB-WiFi-dongls-as-USB-evice.patch \
	file://0010-Kernel-Restart-Fix.patch \
	file://0011-Loading-BT-firmware-after-rootfs-mount.patch \
	file://0013-Fix-Sony-imx219-camera-sensor-greenish-colour-issue.patch \
 	${@bb.utils.contains('FIQ_DEBUGGER', 'enable', 'file://0012-px30-ttyfiq2ttys.patch ', 'file://0013-Removed-ttyFIQ-Interchanges-UART0-and-UART2-port-lin.patch', d)} \
        file://0014-dts-support-for-adl-bmc-driver.patch \
        file://0015-Mount-FS-from-emmc-8th-partition.patch \
        file://0016-Adding-WIFI-driver-support.patch \
        file://0017-GPIO-Mapping-and-SDIO-detection.patch \
        file://0018-Added-WIFI-SDIO-Support-flag.patch \
        file://0019-px30-gea-enable-uart-flow-control-in-dts-for-ap6212-.patch \
        file://0020-wifi-detection-performance.patch \
        file://0021-i2c-spi-add.patch \
        file://0022-wm8960-codec-add.patch \
        file://0041-usb-gadget-kconfig-add.patch \
        file://0042-OTGBOOT-ttyGS0-add.patch \
        file://0043-i2c1-pullup-add.patch \
        file://0044-uart3m0-remove.patch \
        "
