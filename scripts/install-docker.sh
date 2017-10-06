#!/usr/bin/env bash

set -euf -o pipefail

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set up the stable repository
add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable"

# Install Docker CE
apt-get update && sudo apt-get install -y docker-ce

# Use Docker without root
usermod -aG docker ${USER}
