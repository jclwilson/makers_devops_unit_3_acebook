#! /bin/sh
cd /home/ec2-user/acebook

npm install -g pm2@latest

# Run PM2 and point it to config file
pm2 start ecosystem.config.js
