#!/bin/bash

# update base image
docker pull \
    ubuntu:vivid
# build image
docker build \
    --tag silvavlis/digikam:4.13 \
    .
# create 'latest' tag for image
docker tag \
    -f silvavlis/digikam:4.13 \
    silvavlis/digikam:latest
