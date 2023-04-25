#!/bin/bash
if ! which ansible > /dev/null
then
    sudo apt-get update
    sudo apt-get install software-properties-common -y
    sudo apt-add-repository ppa:ansible/ansible -y
    sudo apt-get update
    sudo apt-get install ansible -y
else
    echo "Ansible is already installed on this system."
fi