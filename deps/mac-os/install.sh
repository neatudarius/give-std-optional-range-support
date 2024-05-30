#!/usr/bin/env bash

set -e
set -x

# paper tools
brew install pandoc@3.1.8
brew install mactex

# C++ tools
brew install clang-format@17.0.3

# Bash tools
brew install shellcheck@0.9.00
