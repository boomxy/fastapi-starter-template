#!/usr/bin/env bash
# Copyright (c) 2019 Sebastián Ramírez
# SPDX-License-Identifier: MIT

set -e
set -x

coverage run --source=app -m pytest
coverage report --show-missing
coverage html --title "${@-coverage}"
