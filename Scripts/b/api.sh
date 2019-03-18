#!/bin/bash

bsh='/bin/bash'
v='/usr/bin/vim'
conf="${HOME}/.bashrc"
locConf="${HOME}/.locrc.sh"

function edit() {
	"${v}" "${conf}"
	exec "${bsh}"
}

function editLocal() {
	"${v}" "${locConf}"
	exec "${bsh}"
}

function bash() {
	"${bsh}" "${@}"
}
