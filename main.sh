#!/usr/bin/env bash

set -euo pipefail
trap 'echo "Operation is interrupted"; exit 130' INT

if [ "$EUID" -ne 0 ]; then
  echo "Run with sudo or as root. You can run the code below instead:"

cmake -B build
cmake --build build -j$(nproc)

echo "Run with sudo or as root. You can run the code below instead..."
echo 'sudo bash -c '\''bash <(wget -qO- https://raw.githubusercontent.com/botshell/website-deploy/main/install.sh) "$0"'\'' y'
