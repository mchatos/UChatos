#!/bin/bash

log="/vagrant/provisionning.log"

(
# Rename ubuntu user
useradd -G adm,dialout,cdrom,floppy,sudo,audio,dip,video,plugdev,netdev,lxd mchatos

# Packages installation
export DEBIAN_FRONTEND=noninteractive
apt update
DEBIAN_FRONTEND=noninteractive apt -y install openbox obconf obmenu
apt -y install xfce4
apt -y install lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
) >> $log 2>&1

# Remount Graphical Environnement

systemctl isolate multi-user.target
systemctl isolate graphical.target

