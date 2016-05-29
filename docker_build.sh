#!/bin/bash -x
NAME=$1
docker build -t ${NAME} .
