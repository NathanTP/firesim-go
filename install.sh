#!/bin/bash

if [ ! -f ../golang.json ]; then
  pushd ../
  ln -s firesim-go/golang.json golang.json
  popd
fi
