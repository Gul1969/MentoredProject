#! /bin/bash
sudo apt install python3-pip python3-venv -y
python3 -m venv python-testing-venv
. ./python-testing-venv/bin/activate

pip3 install pytest
pip3 install pytest-cov
pip3 install -r requirements.txt

pytest ./service-1 --cov ./service-1/application

pytest ./service-2 --cov ./service-2/application

pytest ./service-3 --cov ./service-3/application

pytest ./service-4 --cov ./service-4/application
rm -rf python-testing-venv
