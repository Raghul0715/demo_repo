#!/bin/bash

echo "Starting RHEL system update..."

# Update all packages
dnf -y update

# Optionally, clean up cached packages
dnf clean all

echo "System update complete."
