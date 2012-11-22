# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "fedora-17-i386"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://s3.amazonaws.com/samphippen/package.box"

  config.vm.provision :shell, :path => "build.sh"

  config.vm.forward_port 80,5080
  config.vm.forward_port 443,5443
  config.vm.forward_port 22,5022
end
