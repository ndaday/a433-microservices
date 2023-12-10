#!/bin/bash

# membuat docker image dari dockerfile dengan nama karsajobs dan tag latest
docker build -t ndaday/karsajobs:latest .

# melihat daftar image di lokal
docker images

# mengubah nama igame
docker tag ndaday/karsajobs:latest ghcr.io/ndaday/karsajobs:latest

# login ke github package
echo $PAT | docker login ghcr.io --username phanatic --password-stdin

# mengunggah image ke github package
docker push ghcr.io/ndaday/karsajobs:latest