#!/bin/bash

PROJECT_DIR='/home/project/projectdir'

adduser -u ${1} project --quiet --disabled-password --shell /bin/bash --gecos "Project user"
usermod -a -G vagrant project
echo "project ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
echo "vagrant ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
echo "sudo -H -u project -i" >> /home/vagrant/.profile
echo "cd /home/project/projectdir" >> /home/project/.profile

mkdir /home/project/.ssh
mv /home/vagrant/.ssh/id_rsa /home/project/.ssh/id_rsa
mv /home/vagrant/.ssh/id_rsa.pub /home/project/.ssh/id_rsa.pub
chown -R project:project /home/project/.ssh/

mkdir ${PROJECT_DIR}
chown project:project ${PROJECT_DIR}
