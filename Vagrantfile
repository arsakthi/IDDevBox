#Vagrant.configure("2") do |config|
#  config.vm.box = "hashicorp/bionic64"
#  config.vm.provision :shell, path: "bootstrap.sh"
#end
#if !ENV.has_key?("HELLO")
  #raise "Please specify the `HELLO` message"
#end

Vagrant.configure("2") do |config|
  #config.vm.name = "ArunzVM"
  config.vm.box = "hashicorp/bionic64"
  config.vm.provision "shell" do |p|
    p.path = "bootstrap.sh"
    p.args =["Ansible" "2.5.5"]
  end
end