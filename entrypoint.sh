#!/bin/bash

echo "Inside entry point"
cp sitecustomize.py /usr/local/lib/python3.6/
exec "$@"