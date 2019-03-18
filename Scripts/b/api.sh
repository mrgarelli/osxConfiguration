#!/bin/bash

bsh='/bin/bash'

function sourceBash() {
	echo "exec ${bsh}"
	exec "${bsh}"
}

function bash() {
	"${bsh}" "${@}"
}
