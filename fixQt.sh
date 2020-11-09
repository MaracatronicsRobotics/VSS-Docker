sudo apt-get install libmali-xlnx
sudo apt-get install libmali-xlnx-dev
sudo apt-get install packagegroup-petalinux-x11-dev

killall Xorg

export DISPLAY=:0.0
/usr/bin/Xorg -depth 16&
