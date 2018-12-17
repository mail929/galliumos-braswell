#!/bin/bash

# Run as root to install fixes for braswell on Fedora distributions

cd ..

cp -r etc /
cp -r lib /usr
cp -r usr /

cp debian/galliumos-braswell.service /etc/systemd/system

systemctl unmask galliumos-braswell
systemctl enable galliumos-braswell
systemctl start galliumos-braswell

echo "Please reboot to apply changes"
