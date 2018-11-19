#!/usr/bin/env bash
set -eu

sudo apt-get install libftdi1-dev pkg-config
make
sudo make install
