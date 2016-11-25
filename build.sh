#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate packer.json
packer build --force packer.json
vagrant box add --clean --force --name xenial-xubuntu/5.1.10 vagrant/xenial-xubuntu.box
vagrant box list
