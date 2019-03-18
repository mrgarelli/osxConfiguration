#!/bin/bash

chrome='/Applications/Google Chrome.app/Contents/MacOS/Google Chrome'
agenda="${HOME}/Scripts/todo/agenda.md"

opts=':e'
while getopts ${opts} opt; do
	case ${opt} in
		e ) # for read/write protected files
			vim ${agenda}
			exit
			;;
		\? )
			echo "Usage: cmd [-e]"
			;;
	esac
	shift
done

"${chrome}" ${agenda} &>/dev/null

