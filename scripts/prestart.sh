#! /usr/bin/env bash

set -e
#set -x

if [ -n `realpath` ]; then
  PYTHONPATH=$(dirname $(dirname "$(realpath "$0")"))
else
  PYTHONPATH=$(dirname $(cd "$(dirname "$0")"; pwd))
fi
echo "current dir is:" $PYTHONPATH

export PYTHONPATH=$PYTHONPATH

# Let the DB start
python app/backend_pre_start.py

# Run migrations
alembic upgrade head

# Create initial data in DB
python app/initial_data.py
