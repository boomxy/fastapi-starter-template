#!/bin/sh -e
# Copyright (c) 2019 Sebastián Ramírez
# SPDX-License-Identifier: MIT

set -x

ruff check app scripts --fix
ruff format app scripts
