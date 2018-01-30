#!/usr/bin/env bash

sudo yum -y install selinux-policy selinux-policy-targeted policycoreutils-python

sudo sed -i --follow-symlinks 's/selinux=0 //g' /boot/grub/grub.conf
sudo sed -i --follow-symlinks 's/^kernel.*/& selinux=1 security=selinux/g' /boot/grub/grub.conf

cd /tmp/modules
make -f /usr/share/selinux/devel/Makefile quinovas.pp
sudo semodule -i quinovas.pp

sudo touch /.autorelabel
