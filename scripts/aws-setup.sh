#!/usr/bin/env bash

# Set up AWS CLI and AWSUME

curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /

pip install awsume