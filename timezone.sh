#!/bin/bash

# Update all packages
dnf update -y

# Set timezone
timedatectl set-timezone Asia/Tokyo
