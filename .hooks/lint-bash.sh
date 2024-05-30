#!/usr/bin/env bash

set -e
# set -x

source "$(dirname "$(realpath "${0}")")/_util.sh"

if [ "$1" = "-r" ] && [ -n "${2}" ]; then
    TARGET_DIR="${2}"
else
    echo "Usage: ${0} [-h] -r ${TARGET_DIR}"
    echo ""
    echo "Example: ${0} -r ."
    exit 1
fi

grep -l  -r -E '^#!(.*/|.*env +)(sh|bash|ksh|zsh)' "${TARGET_DIR}" | grep -Ev "(.git/)" | xargs shellcheck -x
