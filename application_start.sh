#! /bin/sh

# Add NVM to the command list
source /home/ec2-user/.nvm/nvm.sh

# Move to Acebook directory
cd /home/ec2-user/acebook

# Install PM2
npm install -g pm2@latest

# Run PM2 and point it to config file
pm2 start ecosystem.config.js
