#!/bin/bash
#add fix to exercise5-server1 here
sudo chmod o+w /etc/ssh/ssh_config
sudo sed -i 's/#   StrictHostKeyChecking ask/   StrictHostKeyChecking no/g' /etc/ssh/ssh_config

sudo ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa -N '' -C vagrant@server1
sudo chown -R vagrant:vagrant /home/vagrant/.ssh