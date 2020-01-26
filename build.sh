#!/usr/bin/env bash

docker build -t quay.io/tpokki/gatling:$(cat VERSION) src/ && \
  docker build -t quay.io/tpokki/gatling:$(cat VERSION)-prometheus -f src/Dockerfile.prometheus src/
