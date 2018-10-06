#!/bin/bash

################################################################################
# macOS
################################################################################
sudo ifconfig lo0 alias 10.254.254.254 255.255.255.0
sudo bash -c "curl https://raw.githubusercontent.com/markoshust/magento-docker/master/lib/com.network.alias.plist > /Library/LaunchDaemons/com.network.alias.plist"
sudo chmod 0644 /Library/LaunchDaemons/com.network.alias.plist
sudo chown root:wheel /Library/LaunchDaemons/com.network.alias.plist
sudo launchctl load /Library/LaunchDaemons/com.network.alias.plist

################################################################################
# Fedora
################################################################################
# To enable immediately:
#sudo ip addr add 10.254.254.254 dev lo label lo:0
#
# To persist after reboots:
# edit file at /etc/sysconfig/network-scripts/ifcfg-lo:0 with the following configuration values:
#
#ISALIAS=yes
#DEVICE=lo:0
#ONBOOT=yes
#BOOTPROTO=none
#IPADDR=10.254.254.254
#NETMASK=255.255.255.0
#TYPE=Ethernet
#
# Aftewards, create the following symlinks:
#ln /etc/sysconfig/network-scripts/ifcfg-lo:0 /etc/sysconfig/networking/devices/ifcfg-lo:0
#ln /etc/sysconfig/network-scripts/ifcfg-lo:0 /etc/sysconfig/networking/profiles/default/ifcfg-lo:0