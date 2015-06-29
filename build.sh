#!/bin/bash

# update base image
docker pull \
    ubuntu:trusty
# build image
docker build \
    --tag silvavlis/digikam:4.11 \
    .
# create 'latest' tag for image
docker tag \
    -f silvavlis/digikam:4.11 \
    silvavlis/digikam:latest
