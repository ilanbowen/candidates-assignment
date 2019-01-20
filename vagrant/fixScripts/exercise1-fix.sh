#!/bin/bash
#add fix to exercise1 here
sudo chmod o+w /etc/network/interfaces
sudo echo "      gateway 192.168.100.1" >> /etc/network/interfaces
sudo /etc/init.d/networking restart
