#!/bin/bash

set -x -o pipefail


VERSION=${1:-latest}

IMAGE_NAME="dev-reporting"
REPO="docker.cloudsmith.io/myob/essentials/"
REPO_IMAGE_NAME="$REPO$IMAGE_NAME:$VERSION"

docker build -f Dockerfile --build-arg BUILD_NUMBER=${VERSION} -t $REPO_IMAGE_NAME .
docker push $REPO_IMAGE_NAME

