#!/bin/bash
set -e
source /lm_build/buildconfig

header "Finalizing..."

if [[ -e /usr/local/rvm ]]; then
	  run /usr/local/rvm/bin/rvm cleanup all
fi

run apt-get remove -y autoconf automake
run apt-get autoremove -y
run apt-get clean
run rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
