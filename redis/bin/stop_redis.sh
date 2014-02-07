#!/usr/bin/env bash

linux_version=`cat /proc/version`
CENTOS="Red Hat"
UBUNTU="Ubuntu"
echo "linux_version $linux_version"

if grep "$CENTOS" /proc/version
  then 
    ./bin/centos/redis-cli shutdown
elif grep "$UBUNTU" /proc/version
  then 
    ./bin/ubuntu/redis-cli shutdown
else
   echo "linux distro not supported"
fi
