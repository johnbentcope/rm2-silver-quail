#!/bin/bash
rm -rf .build
rm -rf dist
source /opt/codex/rm11x/3.1.15/environment-setup-cortexa7hf-neon-remarkable-linux-gnueabi
mkdir .build
cd .build
qmake ..
make
INSTALL_ROOT="$(pwd)/../dist" make install
cd ..
scp -r dist/* root@remarkable:/
