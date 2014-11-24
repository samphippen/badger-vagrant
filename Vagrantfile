# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  # Fedora 20 x64, from https://vagrantcloud.com/chef/boxes/fedora-20
  config.vm.box = chef/fedora-20

  config.vm.provision :shell, :path => "build.sh"

  config.vm.forward_port 80,5080
  config.vm.forward_port 443,5443
  config.vm.forward_port 389,5389
  config.vm.forward_port 22,5022
end
