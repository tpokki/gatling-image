#!/usr/bin/env bash

docker build -t quay.io/tpokki/gatling:$(cat VERSION) src/
