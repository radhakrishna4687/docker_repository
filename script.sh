#!/bin/bash

VersionTag=$1
ansibleHosts=$2
#.Install Git
#.The most stable way of getting the latest version of ansible to get it directly from the git repo
echo "[Install Ansible] Install Git"
apt-get install -y git-core

#.Install ansible, python,iputils-ping,openssh-client,vim,nano
#.The most stable way of getting the latest version of ansible to get it directly from the git repo
echo "[Install Ansible] Install Git"
apt-get install ansible -y
apt-get install python -y
apt-get install iputils-ping -y
apt-get install openssh-client -y

# Install Ansible
echo "[Install Ansible] Go to Home folder"
cd ~
echo '[Install Ansible] Git Clone Ansible'
git clone https://github.com/ansible/ansible.git ansible
cd ansible

echo '[Install Ansible] Checkout to desired tag'
git checkout $versionTag

echo '[Install Ansible] Make and Install'
apt make install

echo '[Install Ansible] Clean up!'
cd ..
rm -rf ansible

echo '[Install Ansible] Copy Ansible HOSTS'
mkdir -p /etc/ansible && cp -fr $ansibleHosts /etc/ansible/hosts

echo '[Install Ansible] Update Permissions on hosts file'
# Giving exec permission causes issues when running ansible
chmod 644 /etc/ansible/hosts

echo '[Install Ansible] Done!'