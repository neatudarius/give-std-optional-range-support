#!/usr/bin/env bash

set -e
# set -x

source "$(dirname "$(realpath "${0}")")/_util.sh"

echo "Linting all files ..."

"${REPO_PATH}"/.hooks/lint-bash.sh -r "${REPO_PATH}"
"${REPO_PATH}"/.hooks/lint-cpp.sh -r "${REPO_PATH}"

exit 0
