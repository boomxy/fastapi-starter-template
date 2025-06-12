#!/usr/bin/env bash
# Copyright (c) 2019 Sebastián Ramírez
# SPDX-License-Identifier: MIT

set -e
set -x

mypy app
ruff check app
ruff format app --check
