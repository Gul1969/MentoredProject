#! /bin/bash


sudo apt install ansible -y


ansible-playbook -i '127.0.0.1' playbook.yaml 
