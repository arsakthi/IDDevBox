#!/usr/bin/env bash

echo "*******Running Automation Team Desktop Creation Bash Script*********"
sudo apt-get update
echo ""

echo "******Installing PIP package*******"
yes Y | sudo apt install python-pip
echo ""

echo "******** Installing Git*******"
sudo apt install git
sudo apt-get install -y sshpass
echo ""

echo "******Installing Ansible*******"
echo "Installing Anisble Latest and Greatest"
sudo apt update
pip install ansible
echo ""

# Clone github Repo
echo "********Cloning Devbox setup Repo*******"
git clone https://github.com/arsakthi/IDDevBox.git
git pull
echo ""

# Run Playbook
echo "******Running DevBox Setup Playbook******"
cd IDDevBox
ansible-playbook -i hosts devbox.yml
echo ""

# Done
echo "Done!"

