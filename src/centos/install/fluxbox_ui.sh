#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install Fluxbox"

#yum --enablerepo=epel -y -x gnome-keyring --skip-broken groups install "Xfce" 
#yum -y groups install "Fonts"
yum install -y fluxbox
yum erase -y *power* *screensaver*
yum clean all
#rm /etc/xdg/autostart/xfce-polkit*
#/bin/dbus-uuidgen > /etc/machine-id
