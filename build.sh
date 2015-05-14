#!/bin/bash

docker pull ubuntu:trusty
docker build --tag silvavlis/digikam:4.10 .
docker tag -f silvavlis/digikam:4.10 silvavlis/digikam:latest
