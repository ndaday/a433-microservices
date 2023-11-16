#!/bin/bash

# #  membuat Docker image dari Dockerfile dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image
docker tag item-app:v1 ghcr.io/ndaday/item-app:v1

# Login ke Github package
echo $PAT | docker login ghcr.io --username phanatic --password-stdin

# Mengunggah image ke Github package
docker push ghcr.io/ndaday/item-app:v1