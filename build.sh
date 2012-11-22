#!/bin/bash
yum -y install git ruby-ldap
git clone git://studentrobotics.org/server/dummy-secrets.git /srv/secrets
sed -i "s/cringe/localhost/" /srv/secrets/common.csv
rm -rf /etc/puppet
git clone git://studentrobotics.org/server/puppet.git /etc/puppet
cd /etc/puppet && git submodule init
cd /etc/puppet && git submodule update
puppet apply /etc/puppet/manifests/sr-dev.pp
setenforce 0
sed -i "s/SELINUX=.*/SELINUX=disabled/" /etc/selinux/config

wget --no-check-certificate https://localhost -O /dev/null
if [ $? ]
then
    echo "Server configured successfully!"
else
    echo "Server configuration went wrong :("
fi
