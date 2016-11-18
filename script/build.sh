#!/bin/bash -ue

VERSION_NUMBER=${1}

docker build -t seb-dev-env-debian-pkg-builder .

CONTAINER_ID=$(docker create -e VERSION_NUMBER="$VERSION_NUMBER" seb-dev-env-debian-pkg-builder)

docker start -ai ${CONTAINER_ID}

docker cp ${CONTAINER_ID}:/tmp/seb-dev-env_${VERSION_NUMBER}.deb .

mkdir -p releases/$VERSION_NUMBER/ && mv seb-dev-env_${VERSION_NUMBER}.deb releases/$VERSION_NUMBER/
