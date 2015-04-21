#!/bin/bash

docker build --tag silvavlis/digikam:4.8 .
docker tag silvavlis/digikam:4.8 silvavlis/digikam:latest
