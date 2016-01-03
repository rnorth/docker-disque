#!/bin/bash
set -e

if [ "$1" = 'disque-server' ]; then
	chown -R disque .
	exec gosu disque "$@"
fi

exec "$@"