#!/bin/bash

apt-get update -y
apt-get install --no-install-recommends -y make curl wget tar gcc build-essential

make
