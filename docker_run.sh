#!/bin/bash -x

CONTAINER=$1
docker run --priviledged -d -v output:/output ${CONTAINER}
