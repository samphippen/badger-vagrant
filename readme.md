#Badger Vagrant

Badger is the [Student Robotics](http://studentrobotics.org) server.
It hosts the majority of SR's services (you can find out more at
https://www.studentrobotics.org/trac/wiki/Servers#saffrononlinode.com).

This repo contains configuration files needed to create your own copy
of the server. This can be used for trying out changes to its configuration,
testing that things on it work, or just playing around to see how it works.

##Setup

1. Install VirtualBox, usually in your distro's repos, or https://www.virtualbox.org/wiki/Downloads
2. Install Vagrant, usually in your distro's repos, or http://www.vagrantup.com/downloads.html
  * Or, if you like installing from source, you can install Ruby (1.9.3+,
    including development headers: run `yum install ruby-devel libffi-devel`
    or `apt-get install ruby-dev libffi-dev`) and then `gem install vagrant`
3. Run `git clone https://github.com/samphippen/badger-vagrant && cd badger-vagrant`
4. Run `vagrant up --provision`
5. Wait about 20 minutes
6. Run `vagrant ssh` to log into the box. You have passwordless sudo from the
   vagrant user to root. In case you need to know the password it's 'vagrant'.
7. Point your browser at <https://localhost:5443> to see the website the VM is hosting.

##Some details

The Vagrant BaseBox upon which this is based is a fedora-17-i386 install with
very little else installed on top of it apart from those needed to make it
talk to Vagrant.

This always fetches the latest stuff from puppet when the box
is built, and also does a bunch of other necessary configuration.

The virtual machine is networked into your computer via NAT. Every port on
the machine is mapped to 5000 + actual port (e.g. 5080,5443,5022) on the host.
This allows you to ssh in via `ssh -p 5022 vagrant@localhost`.

To view the website hosted by your badger clone, point your browser to:
<https://localhost:5443>.
