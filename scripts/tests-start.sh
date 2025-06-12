#! /usr/bin/env bash
# Copyright (c) 2019 Sebastián Ramírez
# SPDX-License-Identifier: MIT

set -e
set -x

python app/tests_pre_start.py

bash scripts/test.sh "$@"
