#!/bin/sh
set -x
set -e
export ORG=${1:?"org is required"}
export REPO=${2:?"repo is required"}
export VERSION=${3:?"version is required"}

docker build -t ${ORG}/${REPO}:${VERSION} .
