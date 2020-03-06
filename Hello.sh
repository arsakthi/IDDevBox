echo "*******Running Automation Team Desktop Creation Bash Script*********"
sudo apt-get update

echo "******Installing PIP package*******"
yes Y | sudo apt install python-pip

echo "******** Installing Git*******"
sudo apt install git

echo "******Installing Ansible*******"
if [ -z "$1" ]
then
      echo "Installing Anisble Latest and Greatest"
      sudo apt update
      sudo apt install software-properties-common
      sudo apt-add-repository --yes --update ppa:ansible/ansible
      yes Y | sudo apt install ansible

else
      echo "Installing Anisble version $1"
      sudo pip install ansible=="$1"
fi