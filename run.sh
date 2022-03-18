#!/usr/bin/env bash
#

set -xeuo pipefail


docker container run \
  --rm \
  --user root \
  -e GRANT_SUDO=yes \
  -e NB_UID=1001 \
  -e NB_USER=pippo \
  -p 8888:8888 \
  --entrypoint /usr/local/bin/start.sh \
  --name ccc \
  -it \
  aaa /bin/bash
