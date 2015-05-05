#!/bin/bash

docker pull ubuntu:trusty
docker build --tag silvavlis/digikam:4.9 .
docker tag -f silvavlis/digikam:4.9 silvavlis/digikam:latest
