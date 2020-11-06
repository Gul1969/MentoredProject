#! /bin/bash


sudo apt install ansible -y

cd /home/student/MentoredProject/scripts/
ansible-playbook -i '127.0.0.1' playbook.yaml 
