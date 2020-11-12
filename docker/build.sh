#!/bin/bash
#
# This script will:
#  build the lemp-base image
#  and then build the lemp-dev image
#

# Build lemp-base image 
docker build lemp-base/ -t lemp-dev-base

# Build lemp-dev image using lemp-base
docker build lemp-dev/ -t lemp-dev