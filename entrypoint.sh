#!/bin/bash
set -e

# default behaviour is to launch npm cache server under forever
exec node /root/.npm-packages/bin/forever /root/.npm-packages/bin/npm-proxy-cache -h 0.0.0.0 -s ${CACHE_DIR} -e -t 2592000
