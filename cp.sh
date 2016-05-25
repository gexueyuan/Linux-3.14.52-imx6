#########################################################################
# File Name: cp.sh
# Author: Gexueyuan
# mail: gexueyuan@gmail.com
# Created Time: 2016年05月04日 星期三 11时40分59秒
#########################################################################
#!/bin/bash
 cp arch/arm/boot/zImage /home/gexueyuan/imx6/MY-IMX6-MfgTool-Lib232/Profiles/Linux/OS\ Firmware/image-linux-31452/zImage-myimx6

 make myimx6ek200-6q-2g.dtb

echo "cp dts"

 cp arch/arm/boot/dts/myimx6ek*.dtb  /home/gexueyuan/imx6/MY-IMX6-MfgTool-Lib232/Profiles/Linux/OS\ Firmware/image-linux-31452/

echo "make modules"
 make modules 

 make modules_install INSTALL_MOD_PATH=./modules 

cd modules

tar cjf ../modules.tar.bz2 *
echo "cp modules"
cp ../modules.tar.bz2 /home/gexueyuan/imx6/MY-IMX6-MfgTool-Lib232/Profiles/Linux/OS\ Firmware/image-linux-31452/

echo "done"

