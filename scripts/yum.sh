#!/usr/bin/env bash

# Install epel-release
sudo yum -y install epel-release yum-utils

sudo yum-config-manager --enable epel

# Get the latest, yo
sudo yum -y update