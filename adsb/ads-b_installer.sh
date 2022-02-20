#!/bin/bash
cd /tmp
wget http://flightaware.com/adsb/piaware/files/packages/pool/piaware/p/piaware-support/piaware-repository_3.5.3_all.deb
sudo dpkg -i ./piaware-repository_3.5.3_all.deb
sudo apt-get update
sudo apt-get upgrade -y
sudo apt auto-remove
sudo apt-get clean
sudo apt-get install piaware -y
sudo piaware-config allow-auto-updates yes
sudo piaware-config allow-manual-updates yes
sudo apt-get install dump1090-fa dirmngr -y
sudo bash -c "$(wget -O - http://repo.feed.flightradar24.com/install_fr24_rpi.sh)"
sudo reboot