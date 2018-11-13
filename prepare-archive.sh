#!/usr/bin/env bash

git submodule update --init --recursive

pushd Dependencies/ios_system || exit 1
./get_sources.sh
./get_frameworks.sh

popd || exit 1

./resign-frameworks.sh
