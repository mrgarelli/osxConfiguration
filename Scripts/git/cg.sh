#!/bin/bash
source ${HOME}/Scripts/git/general.sh
vscode="${HOME}/Library/Application Support/Code/User"

g='/usr/bin/git'
config="--git-dir=${HOME}/.cfg --work-tree=${HOME}"
cmd="${g} ${config}"


case "$1" in
	"aa")
		# stage manually deleted or moved files
		stageManualChanges cmd
		# add/stage changes in all configuration files
		command $cmd add ${HOME}'/.gitignore'
		command $cmd add ${HOME}'/.bashrc'
		command $cmd add ${HOME}'/.vimrc'
		command $cmd add "${HOME}/README.md"
		command $cmd add "${HOME}/.rsrc"
		command $cmd add "${vscode}/keybindings.json"
		command $cmd add "${vscode}/settings.json"
		command $cmd add ${HOME}'/Scripts/*'
		;;
	*)
		generalGitWrapper cmd "${@}"
		command $cmd
		;;
esac
