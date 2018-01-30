#!/usr/bin/env bash

sudo yum -y remove ntp
sudo yum -y install chrony

sudo chkconfig chronyd on
sudo service chronyd start
