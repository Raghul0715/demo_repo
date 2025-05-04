#!/bin/bash
set -e

echo "=== Updating package list ==="
sudo apt-get update -y

echo "=== Installing OpenJDK 11 ==="
sudo apt-get install -y openjdk-11-jdk

echo "=== Installing Python3 and pip ==="
sudo apt-get install -y python3 python3-pip

echo "=== Installing Apache HTTP Server ==="
sudo apt-get install -y apache2
sudo systemctl enable apache2
sudo systemctl start apache2

echo "=== Enabling and configuring SSH ==="
sudo apt-get install -y openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh

echo "=== Allowing SSH and HTTP in UFW Firewall ==="
sudo ufw allow ssh
sudo ufw allow http
sudo ufw --force enable

echo "=== Custom setup completed successfully ==="
