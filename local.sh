#!/usr/bin/env bash

docker run --rm \
  --name big-text \
  -p 8080:80 \
  -v "$PWD/public:/usr/share/nginx/html:ro" \
  nginx:alpine
