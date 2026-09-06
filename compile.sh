#!/bin/bash
# ProgramBench-style build: must produce ./executable at the repo root.
set -e
cd "$(dirname "$0")"
# The dev makefile hard-codes the Linux linker flag "-Wl,-E"; macOS ld spells the
# same dynamic-symbol export "-Wl,-export_dynamic".
make MYLDFLAGS="-Wl,-export_dynamic"
cp lua executable
