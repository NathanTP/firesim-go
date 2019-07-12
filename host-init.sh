#!/bin/bash

pushd riscv-go/src
GOOS=linux GOARCH=riscv64 ./bootstrap.bash
popd
