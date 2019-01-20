#!/bin/bash
#add fix to exercise4-server1 here
sudo chmod o+w /etc/hosts
sudo echo "192.168.100.11 server2" >> /etc/hosts
