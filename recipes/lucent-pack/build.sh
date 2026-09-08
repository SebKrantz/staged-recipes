#!/bin/bash

set -eux

pushd js
    npm ci
    npm run build
    mkdir -p ../src/lucent_pack/static/lucent/
    cp -r dist/ ../src/lucent_pack/static/lucent/
popd

python -m pip install . -vvv
