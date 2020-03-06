#!/usr/bin/env bash

echo "*******Running Automation Team Desktop Creation Bash Script*********"
sudo apt-get update

echo "******Installing PIP package*******"
yes Y | sudo apt install python-pip

echo "******** Installing Git*******"
sudo apt install git
sudo apt-get install -y sshpass

echo "******Installing Ansible*******"
echo "Installing Anisble Latest and Greatest"
sudo apt update
pip install ansible
#
#if [ -z "$1" ]
#    then
#        echo "Installing Anisble Latest and Greatest"
#        sudo apt update
#        yes Y | sudo apt install software-properties-common
#        yes Y | sudo apt-add-repository --yes --update ppa:ansible/ansible
#        yes Y | sudo apt install ansible

#else
        echo "Installing Anisble version $2"
#        sudo pip install ansible==$2

#fi

# Run Playbook
echo "Running DevBox Setup Playbook"
ansible-playbook -i hosts devbox.yml
echo ""

# Done
echo "Done!"

