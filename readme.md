#Badger Vagrant

Badger is the [Student Robotics](http://studentrobotics.org) server.
This is a vagrant configuration that will very easily go from scratch
to a VagrantBox.

You can find out more information about the things on badger at:
https://www.studentrobotics.org/trac/wiki/Servers#badgeronlinode.com

##Setup

1. Install VirtualBox, usually in your distro's repos, or https://www.virtualbox.org/wiki/Downloads
2. Install Vagrant, usually in your distro's repos, or http://www.vagrantup.com/downloads.html
  * Or, if you like installing from source, you can install Ruby (1.9.3+,
    including development headers: `yum install ruby-devel libffi-devel` or
    `apt-get install ruby-dev libffi-dev`) and then `gem install vagrant`
3. `git clone https://github.com/samphippen/badger-vagrant && cd badger-vagrant`
4. `vagrant up --provision`
5. Wait about 20 minutes
6. `vagrant ssh` to log into the box. You have passwordless sudo from the
   vagrant user to root. In case you need to know the password it's 'vagrant'


##Some details

The Vagrant BaseBox upon which this is based is a fedora-17-i386 install with
very little else installed on top of it apart from those needed to make it
talk to Vagrant.

This always fetches the latest stuff from puppet when the box
is built, and also does a bunch of other necessary configuration.

The virtual machine is networked into your computer via NAT. Every port on
the machine is mapped to 5000 + actual port (e.g. 5080,5443,5022).
This allows you to ssh in.

**You almost certainly want 5443 as the server is set to default to ssl**.
