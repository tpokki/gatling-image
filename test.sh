#!/usr/bin/env bash

docker run --rm -v $PWD/test:/input quay.io/tpokki/gatling:$(cat VERSION)-prometheus -nr -s Example && \
  docker run --rm -v $PWD/test:/input quay.io/tpokki/gatling:$(cat VERSION) -nr -s Example
