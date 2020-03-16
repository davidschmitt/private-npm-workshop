#!/bin/bash

cd "$1"
if [ -f "Dockerfile.base" ]
then
  docker stop vrdcontainer 2>/dev/null
  docker rm vrdcontainer 2>/dev/null
  docker volume rm vrdstorage 2>/dev/null
fi
rm -rf Dockerfile.base Dockerfile.vrd config.yaml certreq.cfg vrdpasswd vrdstart
