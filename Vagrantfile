
Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/bionic64"
  config.vm.define "MyIDDevBox"
  config.vm.provision "shell" do |p|
    p.path = "bootstrap.sh"
  end
end