#!/bin/bash

set -ex

# use different image for other arch
# for example ubuntu:18.04 for aarch64
docker run --rm \
-v $(pwd):/build/static-glibc-nginx \
-w /build/static-glibc-nginx \
iregistry.baidu-int.com/iec/ubuntu-base:18.04 bash build.sh

echo 'docker run command done'