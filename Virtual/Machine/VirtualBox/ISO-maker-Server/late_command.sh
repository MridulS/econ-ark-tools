#!/bin/bash
chroot /target curl -L -o /var/local/late_command https://raw.githubusercontent.com/econ-ark/econ-ark-tools/master/Virtual/Machine/VirtualBox/ISO-maker-Server/late_command 
     chroot /target curl -L -o /var/local/start.sh https://raw.githubusercontent.com/econ-ark/econ-ark-tools/master/Virtual/Machine/VirtualBox/ISO-maker-Server/start.sh 
     chroot /target curl -L -o /var/local/finish.sh https://raw.githubusercontent.com/econ-ark/econ-ark-tools/master/Virtual/Machine/VirtualBox/ISO-maker-Server/finish.sh 
     chroot /target curl -L -o /var/local/refind-install-MacOS.sh https://raw.githubusercontent.com/econ-ark/econ-ark-tools/master/Virtual/Machine/VirtualBox/ISO-maker-Server/refind-install-MacOS.sh 
     chroot /target curl -L -o /etc/rc.local https://raw.githubusercontent.com/econ-ark/econ-ark-tools/master/Virtual/Machine/VirtualBox/ISO-maker-Server/rc.local 
     chroot /target curl -L -o /var/local/Econ-ARK.VolumeIcon.icns https://raw.githubusercontent.com/econ-ark/econ-ark-tools/master/Virtual/Machine/VirtualBox/ISO-maker-Server/Disk/Icons/Econ-ARK.VolumeIcon.icns 
     chroot /target curl -L -o /var/local/Econ-ARK.disk_label      https://raw.githubusercontent.com/econ-ark/econ-ark-tools/master/Virtual/Machine/VirtualBox/ISO-maker-Server/Disk/Labels/Econ-ARK.disklabel    
     chroot /target curl -L -o /var/local/Econ-ARK.disk_label_2x   https://raw.githubusercontent.com/econ-ark/econ-ark-tools/master/Virtual/Machine/VirtualBox/ISO-maker-Server/Disk/Labels/Econ-ARK.disklabel_2x 
     chroot /target chmod +x /var/local/start.sh 
     chroot /target chmod +x /var/local/finish.sh 
     chroot /target chmod +x /var/local/refind-install-MacOS.sh 
     chroot /target chmod +x /etc/rc.local 
     chroot /target mkdir -p /etc/lightdm/lightdm.conf.d 
     chroot /target curl -L -o /etc/lightdm/lightdm.conf.d/autologin-econ-ark.conf https://raw.githubusercontent.com/econ-ark/econ-ark-tools/master/Virtual/Machine/VirtualBox/ISO-maker-Server/root/etc/lightdm/lightdm.conf.d/autologin-econ-ark.conf 
     chroot /target chmod 755  /etc/lightdm/lightdm.conf.d/autologin-econ-ark.conf 
     chroot /target curl -L -o /var/local/bash_aliases-add https://raw.githubusercontent.com/econ-ark/econ-ark-tools/master/Virtual/Machine/VirtualBox/ISO-maker-Server/bash_aliases-add 
     chroot /target grub-mkconfig -o /boot/grub/grub.cfg 

