#!/bin/bash
set -e
echo "Running command: $@"
exec /bin/bash -c "$@"
