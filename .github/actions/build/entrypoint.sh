#!/bin/bash

set -e

mkdir -p /github/home/.nerves/dl
make dist

set +e

cp /github/home/.nerves/dl/ly11_system_86_64* dist/

set -e

make dist-test-app


