#!/bin/sh

# Download nvm 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash

# Run NVM install script
. ~/.nvm/nvm.sh

# Install the latest version of node
nvm install node

# Use the latest version of node
nvm use node

# Change the ownership of the newly-created ./acebook directory 
sudo chown -R ec2-user:ec2-user /home/ec2-user/acebook/

# Change directory into /acebook
cd /home/ec2-user/acebook

# Install latest NPM
npm install -g npm@latest

# Install dependencies from package.json
npm ci

# Add mongodb repo to YUM sources
sudo sh -c "echo -e '[mongodb-org-8.0]\nname=MongoDB Repository\nbaseurl=https://repo.mongodb.org/yum/amazon/2023/mongodb-org/8.0/x86_64/\ngpgcheck=1\nenabled=1\ngpgkey=https://pgp.mongodb.com/server-8.0.asc' > /etc/yum.repos.d/mongodb-org-8.0.repo"

# Install MongoDB Community from repository
sudo yum install -y mongodb-org

# Start MongoDB
sudo systemctl start mongod

# Enable at startup
sudo systemctl enable mongod
