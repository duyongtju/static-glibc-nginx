#!/bin/bash

set -ex

# use different image for other arch
#docker run --rm \
#-v $(pwd):/build/static-glibc-nginx \
#-w /build/static-glibc-nginx \
#ubuntu:18.04 bash build.sh

bash build-image.sh

docker run --rm \
-v $(pwd):/build/static-glibc-nginx \
-w /build/static-glibc-nginx \
ubuntu:18.04-nginx-build bash build.sh

echo 'docker run command done'