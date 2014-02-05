#!/bin/sh

# ntp
sudo aptitude -y install ntp

# Adding servers
echo -e "\nserver ntp1.jst.mfeed.ad.jp\nserver ntp2.jst.mfeed.ad.jp\nserver ntp3.jst.mfeed.ad.jp\n" | sudo tee -a /etc/ntp.conf

# Restart
sudo /etc/init.d/ntp restart
