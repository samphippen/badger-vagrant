#Badger Vagrant

Badger is the new [Student Robotics](http://studentrobotics.org) server. This
is a vagrant configuration that will very easil go from scratch to a vagrantbox.

##Setup

1. Install ruby 1.9.3 or greater [RVM might help](https://rvm.io/rvm/install/)
2. Install virtualbox
3. `gem install vagrant`
4. `git clone https://github.com/samphippen/badger-vagrant && cd badger-vagrant`
5. `vagrant up --provision`
6. Wait about 20 minutes
7. `vagrant ssh` to log into the box. You have passwordless sudo from the
   vagrant user to root. In case you need to know the password it's 'vagrant'


##Some details

The Vagrant basebox upon which this is based is a fedora-17-i386 install with
very little else installed on top of it apart from those needed to make it
talk to vagrant.

This always fetches the latest stuff from puppet when the box
is built, and also does a bunch of other necessary configuration.

The virtual machine is networked into your computer via NAT. Every port on
the machine is mapped to 5000 + actual port (e.g. 5080,5443,5022). This
allows you to ssh in
