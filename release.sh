#!/bin/sh

if [ -z "${VERSION}" ]; then
  echo "The VERSION environment variable is NOT set, but is required."
  exit
fi

COMMIT=${COMMIT:-`git rev-parse HEAD`}

git tag --annotate --message "Release ${VERSION}" ${VERSION} ${COMMIT}
git push origin ${VERSION}

./build.sh

docker push xsystems/mqtt:${VERSION}
docker push xsystems/mqtt:latest
