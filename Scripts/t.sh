#!/bin/sh

tree='/usr/local/bin/tree'
ignore='__pycache__|*.pyc'

command ${tree} -I ${ignore} -L 1 --dirsfirst "${@}"
