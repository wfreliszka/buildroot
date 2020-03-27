setenv bootargs console=ttyS0,115200 hdmi.audio=EDID:0 disp.screen0_output_mode=1920x1080p60 consoleblank=0 earlyprintk root=/dev/mmcblk0p2 rootfstype=ext4 elevator=deadline rootwait consoleblank=0 loglevel=1 vt.global_cursor_default=0 verbose panic=10
fatload mmc 0 $kernel_addr_r Image
fatload mmc 0 $fdt_addr_r sun50i-h5-orangepi-zero-plus2.dtb

booti $kernel_addr_r - $fdt_addr_r



#loglevel=1 sunxi_g2d_mem_reserve=100M cma=196M 
#sunxi_ve_mem_reserve=200M 
#sunxi_fb_mem_reserve=64M 