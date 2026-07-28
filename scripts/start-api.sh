#!/bin/sh
set -eu

cd "$(dirname "$0")/.."
export PYTHONPATH=src
exec uvicorn api.main:app --host 0.0.0.0 --port "${PORT:-8000}"
