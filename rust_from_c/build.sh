#!/bin/bash

set -euo pipefail

cargo build

gcc call_rust.c -o call_rust -lrust_from_c -L./target/debug

LD_LIBRARY_PATH=./target/debug ./call_rust
