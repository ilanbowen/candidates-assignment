#!/bin/bash
#add fix to exercise5-server2 here
sudo chmod o+w /etc/ssh/ssh_config
sudo sed -i 's/#   StrictHostKeyChecking ask/   StrictHostKeyChecking no/g' /etc/ssh/ssh_config
sudo apt-get install sshpass
sudo sshpass -p "vagrant" scp -r vagrant@192.168.100.10:/home/vagrant/.ssh/id_rsa.pub /home/vagrant/.ssh/authorized_keys_temp
cat /home/vagrant/.ssh/authorized_keys_temp >> /home/vagrant/.ssh/authorized_keys