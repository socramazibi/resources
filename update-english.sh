#!/bin/bash

docker container run --rm -it \
  -v $(pwd):/resources \
  --workdir /resources \
  --user $(id -u):$(id -g) \
  gortc/steam:latest

INPUT_DIR="game/rocketstation_DedicatedServer_Data/StreamingAssets/Language/"

cp $INPUT_DIR/english*.xml .