#!/bin/sh

tree='/usr/local/bin/tree'
ignore='__pycache__|*.pyc|__init__.py'

command ${tree} -I ${ignore} -L 1 --dirsfirst "${@}"