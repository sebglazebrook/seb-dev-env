Overview
========

Here's my own debian package that get's me all the dev dependencies I need to get going.

Installation
============

My debian repository is hosted on github.

It's a hacky but free way to host your own stuff.

You can install this package by running the following:

```
#  docker dependencies
apt-get update
apt-get install apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo debian-jessie main" | tee  /etc/apt/sources.list.d/docker.list


echo " deb http://cdn.rawgit.com/sebglazebrook/debian-pkg-repo/0bc3575813da95c899b72a8a91b06e9c8e6d35e4 jessie main" | sudo tee /etc/apt/sources.list.d/sebglazebrook.list
apt-get update

apt-get install seb-dev-env
```
