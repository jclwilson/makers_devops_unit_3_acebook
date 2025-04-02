#! /bin/sh
cd /home/ec2-user/acebook

npm ci -g pm2

# Run PM2 and point it to config file
pm2 start ecosystem.config.js
