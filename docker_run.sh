#!/bin/bash -x

CONTAINER=$1
docker run --privileged -d -v output:/output ${CONTAINER}
