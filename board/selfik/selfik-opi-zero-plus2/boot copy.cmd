setenv overlay_error "false"
# default values
setenv verbosity "1"
setenv console "both"
setenv disp_mem_reserves "off"
setenv disp_mode "1920x1080p60"
setenv rootfstype "ext4"
setenv docker_optimizations "on"
setenv devnum "0"
setenv rootdev "/dev/mmcblk${devnum}p1"

hdmi.audio=EDID:0 disp.screen0_output_mode=${disp_mode} consoleblank=0 loglevel=${verbosity}

setenv bootargs console=ttyS0,115200 hdmi.audio=EDID:0 disp.screen0_output_mode=1280x720p60 vt.global_cursor_default=0 consoleblank=0 earlyprintk root=/dev/mmcblk0p2 rootfstype=ext4 elevator=deadline rootwait verbose panic=10
fatload mmc 0 $kernel_addr_r Image
fatload mmc 0 $fdt_addr_r sun50i-h5-orangepi-zero-plus2.dtb

booti $kernel_addr_r - $fdt_addr_r
