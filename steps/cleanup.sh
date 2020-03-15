#!/bin/bash

cd "$1"
if [ -f "Dockerfile" ]
then
  docker stop vrdcontainer 2>/dev/null
  docker rm vrdcontainer 2>/dev/null
  docker volume rm vrdstorage 2>/dev/null
fi
rm -rf Dockerfile
