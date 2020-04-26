#!/bin/bash
set -e
source /lm_build/buildconfig

header "Performing miscellaneous preparation"

## Ensure that docs and non-English locales are not installed.
run cp /lm_build/config/dpkg-nodocs.conf /etc/dpkg/dpkg.cfg.d/01_nodoc
run cp /lm_build/config/dpkg-only-english-locale.conf /etc/dpkg/dpkg.cfg.d/01_only_english_locale
