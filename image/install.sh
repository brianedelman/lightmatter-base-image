#!/bin/bash
set -e
source /lm_build/buildconfig

run /lm_build/enable_repos.sh
run /lm_build/prepare.sh

run minimal_apt_get_install build-essential
## Bundler has to be able to pull dependencies from git.
run minimal_apt_get_install git

run /lm_build/python.sh
run /lm_build/node.sh
run /lm_build/finalize.sh
