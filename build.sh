#!/bin/bash
yum -y install git ruby-ldap puppet
git clone git://studentrobotics.org/server/dummy-secrets.git /srv/secrets
myname=`hostname`
sed -i "s/localhost/$myname/" /srv/secrets/common.csv
rm -rf /etc/puppet
git clone --recursive git://studentrobotics.org/server/puppet.git /etc/puppet
puppet apply /etc/puppet/manifests/sr-dev.pp
puppet_ret=$?
setenforce 0
sed -i "s/SELINUX=.*/SELINUX=disabled/" /etc/selinux/config

if [ $puppet_ret ]
then
    echo "Failed to apply puppet config :("
fi

wget --no-check-certificate https://localhost -O /dev/null
if [ $? ]
then
    echo "Server configuration went wrong :("
else
    echo "Server configured successfully!"
fi
