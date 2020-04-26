#!/bin/bash
set -e
source /lm_build/buildconfig

header "Preparing APT repositories"

cat >/etc/apt/sources.list <<EOF
deb http://archive.ubuntu.com/ubuntu/ bionic main universe
deb http://archive.ubuntu.com/ubuntu/ bionic-security main universe
deb http://archive.ubuntu.com/ubuntu/ bionic-updates main universe
EOF

run apt-get update
