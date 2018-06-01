#!/bin/sh
set -x
set -e
export ORG=teamenvoy
export REPO=$(basename "$(pwd)")
export REVISION=$(git rev-parse --short HEAD)

docker build -t ${ORG}/${REPO}:${REVISION} .
