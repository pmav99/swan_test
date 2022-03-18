#!/usr/bin/env bash
#

set -xeuo pipefail

export DOCKER_BUILDKIT=1

docker build \
  --build-arg NB_UID=1001 \
  --build-arg NB_USER=pippo \
  -t aaa ./
