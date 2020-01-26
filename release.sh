#!/usr/bin/env bash

docker push quay.io/tpokki/gatling:$(cat VERSION)-prometheus && \
  docker push quay.io/tpokki/gatling:$(cat VERSION)
