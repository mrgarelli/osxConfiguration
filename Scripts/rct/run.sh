#!/bin/bash
hr="${HOME}/Scripts/rct"
rsrc="${hr}/rsrc"
linter="${rsrc}/eslintrc"
readme="${rsrc}/readme.md"
rdm="${rsrc}/rdm"

help () {
	echo -e "options"
	echo -e "\t -d: move all the documentation"
	echo -e "\t -h: help menu"
	echo -e "\t -l: setup eslint in a project directory"
	echo -e "\t -r: react-native run-ios"
	exit 0
}

# allows for the options -s, -r
opts='dhlr'

while getopts ${opts} opt; do
	case ${opt} in
		# for the setup of a react project
		d ) 
			echo '##### copying readme'
			cp "${readme}" "${PWD}"
			echo '##### copying .rdm folder'
			cp -r "${rdm}" "${PWD}/.rdm"
			exit 0
			;;
		# for the help menu
		h )
			help
			;;
		# setting up eslint
		l )
			echo '##### installing eslint'
			npm install eslint
			echo '##### installing rallycoding'
			npm install --save-dev eslint-config-rallycoding
			echo '##### moving .eslintrc'
			cp "${linter}" "${PWD}/.eslintrc"
			echo 'NOTE: still need eslint extension in your editor'
			;;
		# to run a react project
		r ) # process option t
			react-native run-ios
			exit 0
			;;
		\? )
			echo 'rct -h for help menu'
			exit 1
			;;
esac
done
shift "$(( OPTIND - 1 ))"

# process no inputs
if [ -z "${@}" ]
then
	help
fi
# else run normal react native module with inputs
react-native "${@}"
