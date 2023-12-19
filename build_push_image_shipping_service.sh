#!/bin/bash

# membuat docker image dari berkas dockerfile dengan nama shipping_service dan tag latest
docker build -t ndaday/shipping_service:latest .

# mengubah nama image
docker tag ndaday/shipping_service:latest ghcr.io/ndaday/shipping_service:latest

# login ke github package
echo $PAT | docker login ghcr.io --username phanatic --password-stdin

# mengunggah image ke github package
docker push ghcr.io/ndaday/shipping_service:latest