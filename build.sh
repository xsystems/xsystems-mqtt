#!/bin/sh

VERSION=${VERSION:-latest}

docker build --tag xsystems/mqtt:${VERSION} .

if [ "${VERSION}" != "latest" ]; then
  docker tag xsystems/mqtt:${VERSION} xsystems/mqtt:latest
fi
