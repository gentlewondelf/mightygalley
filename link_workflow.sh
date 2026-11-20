#!/usr/bin/env bash
set -e
LIB="bent-volume.a"
TAG="gentle-ember-frosty-forest"
REPO="gentlewondelf/mightygalley"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ main.cpp "$LIB" -pthread -O2 -std=c++17 -o app && ./app
