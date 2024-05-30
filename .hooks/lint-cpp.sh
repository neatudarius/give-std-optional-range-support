#!/usr/bin/env bash

set -e
# set -x

source "$(dirname "$(realpath "${0}")")/_util.sh"

TOOL_NAME="run-clang-format"
TOOL_REPO_PATH="${REPO_PATH}/${TOOL_NAME}"
TOOL_PATH="${TOOL_REPO_PATH}/${TOOL_NAME}.py"

"${TOOL_PATH}"  \
    --exclude "${TOOL_REPO_PATH}/src/third_party/qux.cpp" \
    --exclude "${REPO_PATH}/.git" \
    "${@}"
