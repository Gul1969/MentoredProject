#! /bin/bash

sudo apt install python3-pip
sudo apt-get install python3-venv
python3 -m venv venv
. ./venv/bin/activate
pip3 install -r requirements.txt

pytest ./service-1 --cov ./service-1/application
pytest ./service-2 --cov ./service-2/application
pytest ./service-3 --cov ./service-3/application
pytest ./service-4 --cov ./service-4/application

deactivate
rm -rf venv
