#! /bin/sh
cd /home/ec2-user/acebook

# Restart mongod
sudo systemctl reload mongod

# Use NPX to run PM2 and point it to config file
npx pm2 start ecosystem.config.js
