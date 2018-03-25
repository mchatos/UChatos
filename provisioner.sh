#!/bin/bash

echo "Test provisionning" > /vagrant/test

log="/vagrant/provisionning.log"

(
# Rename ubuntu user
usermod -l mchatos ubuntu
groupmod -n mchatos ubuntu

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

