#!/bin/bash

sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
sudo apt update
sudo apt-get install openjdk-8-jdk openjdk-8-doc -y
echo "deb https://releases.jfrog.io/artifactory/artifactory-debs bionic main" | sudo tee -a /etc/apt/sources.list.d/jfrog.list
wget -qO - https://releases.jfrog.io/artifactory/api/gpg/key/public | sudo apt-key add -
sudo apt update
sudo apt install jfrog-artifactory-oss -y
sudo systemctl start artifactory
sudo systemctl enable artifactory
sudo systemctl status artifactory
DD_API_KEY=7b3d40d871dc483faa446afbdbb72f52 DD_SITE="datadoghq.com" bash -c "$(curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script_agent7.sh)"


done
