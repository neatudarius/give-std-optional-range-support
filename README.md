# WG21 P3168: Give std::optional Range Support

Authors: Marco Foco ([@mfoco](https://github.com/mfoco)), Darius Neațu ([@neatudarius](https://github.com/neatudarius)), Barry Revzin ([@brevzin](https://github.com/brevzin)), David Sankel ([@camio](https://github.com/camio))

Audience: Library Evolution

Description: The standard library lacks facilities for optional types when doing range operations. While other solutions proposed creating a new type, this paper explores the design alternative where `std::optional` is made into a range. 

> Note: This repo/paper is work for [WG21: C++ Standards Committee Papers](https://www.open-std.org/jtc1/sc22/wg21/docs/papers/).

## Published Revisions
* P3168R0:
  * [https://wg21.link/P3168R0](https://wg21.link/P3168R0), 2024-02-28
  * source: [P3168R0.md](./revisions/P3168R0.md)
  * status: reviewed in Tokyo 2024; forwarded to LEWG April Electronic Polls.
* P3168R1:
  * [https://wg21.link/P3168R1](https://wg21.link/P3168R1), 2024-04-08
  * source: [P3168R1.md](./revisions/P3168R1.md)
  * status: passed LEWG April Electronic Polls and forwarded to LWG for Saint Louis 2024.
* P3168R2:
  * [https://wg21.link/P3168R2](https://wg21.link/P3168R2), 2024-06-25
  * source: [P3168R2.md](./revisions/P3168R2.md)
  * status: reviewed by LWG in Saint Louis 2024, forwarded to LWG Straw Polls.

Final status: TBD
  
## Implementation experience

Implementation is done in [Beman.Optional26](https://github.com/beman-project/Optional26).

## Setup
The top-level of this repository contains the source code for various proposals and the generated/ directory contains the generated proposals (HTML or PDF).

This repository also includes a paper-writing framework using Pandoc.

Template: [https://github.com/mpark/wg21](https://github.com/mpark/wg21).



### Install Deps

```bash
# actual install
$ deps/install.sh

# optional extra git hooks activation
$ cd .git/hooks && ln -fs ../../.hooks/pre-push . && cd -
```

### Export Papers

```bash
$ make <paper>.pdf  # `<paper>.md` -> `generated/<paper>.pdf`
$ make <paper>.html # `<paper>.md` -> `generated/<paper>.html`
```

### Run Linters

Linters are automatically run at `git push`. Check:
```bash
$ cat .git/hooks/pre-push | grep hooks
"${REPO_PATH}/.hooks/lint-bash.sh" -r "${REPO_PATH}"
"${REPO_PATH}/.hooks/lint-cpp.sh" -r "${REPO_PATH}"
```

### clang-format
```bash
$ .hooks/lint-cpp.sh -h  
usage: run-clang-format.py [-h] [--clang-format-executable EXECUTABLE] [--extensions EXTENSIONS] [-r] [-d] [-i] [-q] [-j N] [--color {auto,always,never}] [-e PATTERN] [--style STYLE] file [file ...]

A wrapper script around clang-format, suitable for linting multiple files and to use for continuous integration. This is an alternative API for the clang-format command line. It runs over multiple files and directories in parallel. A diff
output is produced and a sensible exit code is returned.

positional arguments:
  file

optional arguments:
  -h, --help            show this help message and exit
  --clang-format-executable EXECUTABLE
                        path to the clang-format executable
  --extensions EXTENSIONS
                        comma separated list of file extensions (default: c,h,C,H,cpp,hpp,cc,hh,c++,h++,cxx,hxx)
  -r, --recursive       run recursively over directories
  -d, --dry-run         just print the list of files
  -i, --in-place        format file instead of printing differences
  -q, --quiet           disable output, useful for the exit code
  -j N                  run N clang-format jobs in parallel (default number of cpus + 1)
  --color {auto,always,never}
                        show colored diff (default: auto)
  -e PATTERN, --exclude PATTERN
                        exclude paths matching the given glob-like pattern(s) from recursive search
  --style STYLE         formatting style to apply (LLVM, Google, Chromium, Mozilla, WebKit)

# dry-run auto check for changes
$ .hooks/lint-cpp.sh -r .
--- ./src/main.cpp	(original)
+++ ./src/main.cpp	(reformatted)
@@ -1,7 +1,4 @@
 int main() {
-    
 
-
-
-    // bad format example
+  // bad format example
 }% 

# in-place auto changes
$ .hooks/lint-cpp.sh -r . -i
```

### shellcheck

```bash
$ .hooks/lint-bash.sh -h 
Usage: .hooks/lint-bash.sh [-h] -r 

Example: .hooks/lint-bash.sh -r .
```
