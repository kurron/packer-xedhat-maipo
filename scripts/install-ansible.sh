#!/bin/bash -x

until sudo yum -y update; do echo "Waiting for yum lock"; sleep 5; done

# install the Extra Package repository
sudo rpm -iUvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y update

# supposedly, this is the newer way to install pip
sudo yum -y install python-pip python-devel libffi-devel openssl-devel gcc redhat-rpm-config
sudo pip install --upgrade pip
sudo pip install --upgrade paramiko
sudo pip install --upgrade ansible
