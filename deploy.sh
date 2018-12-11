#!/bin/bash

ssh -i ssh -i "./testCandidate.pem" -o StrictHostKeyChecking=no ec2-user@ec2-34-193-36-249.compute-1.amazonaws.com << EOF
sudo amazon-linux-extras install docker
sudo usermod -a -G docker ec2-user
sudo curl -L https://github.com/docker/compose/releases/download/1.9.0/docker-compose-`uname -s`-`uname -m` | sudo tee /usr/local/bin/docker-compose > /dev/null
sudo chmod +x /usr/local/bin/docker-compose
sudo service docker start
sudo chkconfig docker on
sudo yum install git -y
git clone https://github.com/g1lg4m3sh/moon.git
cd moon
docker-compose up -d
EOF
