#!/bin/bash

# membuat docker image dari berkas dockerfile dengan nama karsajobs_ui dan tag latest
docker build -t ndaday/karsajobs_ui:latest .

# melihat daftar image di lokal
docker images

# mengubah nama igame
docker tag ndaday/karsajobs_ui:latest ghcr.io/ndaday/karsajobs_ui:latest

# login ke github package
echo $PAT | docker login ghcr.io --username phanatic --password-stdin

# mengunggah image ke github package
docker push ghcr.io/ndaday/karsajobs_ui:latest