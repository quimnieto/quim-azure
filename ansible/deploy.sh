#!/bin/bash

#I need to execute this playbook with sudo because it is executed in local machine
sudo ansible-playbook 00_playbook.yml
sudo ansible-playbook 02_playbook.yml

ansible-playbook 01_playbook.yml -i hosts --limit webservers
ansible-playbook 03_playbook.yml -i hosts --limit kubernetes
