#!/bin/bash

cd "$1" && rm -rf Dockerfile.base vrd pkg1
docker stop vrdcontainer 2>/dev/null
docker rm vrdcontainer 2>/dev/null
docker network rm vrdnet 2>/dev/null
docker volume rm vrdvolume 2>/dev/null
