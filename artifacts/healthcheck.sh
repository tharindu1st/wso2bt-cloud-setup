#!/bin/bash

set -e

host="$1"
port= "$2"
shift
cmd="$@"

until nc -zv "$host" "$port"; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - executing command"
exec $cmd