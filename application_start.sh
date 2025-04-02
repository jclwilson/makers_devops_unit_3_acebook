#! /bin/sh
cd /home/ec2-user/acebook

# Restart mongod
sudo systemctl reload mongod

# Run npm
npm run start
