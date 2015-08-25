#!/bin/bash

# update base image
docker pull \
    ubuntu:trusty
# build image
docker build \
    --tag silvavlis/digikam:plugins \
    .
