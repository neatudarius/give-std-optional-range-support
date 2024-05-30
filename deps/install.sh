#!/usr/bin/env bash

set -e
set -x

DEPS_PATH="$(dirname "$(realpath "${0}")")"

OS="$(uname -s)"
case "${OS}" in
    Linux )     "${DEPS_PATH}/linux/install.sh"  ;;
    Darwin)     "${DEPS_PATH}/mac-os/install.sh" ;;
    *     )     echo "Unspported OS: ${OS}." && exit 1 ;;
esac

# Install wg21 build helpers.
git submodule add https://github.com/mpark/wg21.git
echo "include wg21/Makefile" > Makefile

# Instal clang-format runner helper.
git submodule add "https://github.com/Sarcasm/run-clang-format.git"
rm -rf  run-clang-format/src
