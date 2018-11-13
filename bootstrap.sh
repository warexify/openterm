#!/usr/bin/env bash

git submodule update --init --recursive

pushd Dependencies/ios_system || exit 1
./get_sources.sh
./get_frameworks_fat.sh
popd || exit 1

pushd Dependencies/network_ios || exit 1
./get_frameworks.sh
popd || exit 1
