#!/bin/bash
cd /root/
echo "Unpacking bootstrap:"
tar vxf go-linux-riscv64-bootstrap.tbz
echo "Cloning go repo:"
git clone https://github.com/4a6f656c/riscv-go
cd riscv-go
export GOROOT_BOOTSTRAP=$HOME/go-linux-riscv64-bootstrap
export PATH="$(pwd)/misc/riscv:$(pwd)/bin:$PATH"
cd src
echo "Building go from bootstrap:"
GOGC=off ./make.bash                            # Builds go on $HOME/riscv-go/bin that can be added to your path
poweroff
