#!/bin/bash
hr="${HOME}/Scripts/url"

help () {
	echo -e "options"
	echo -e "\t -d: decode the passed in url (with quotes)"
	echo -e "\t -e: encode the passed in url (with quotes)"
	echo -e "\t -h: help menu"
	exit 0
}

# allows for the options -s, -r
opts='deh'

while getopts ${opts} opt; do
	case ${opt} in
		# decode a url
		d ) # process option t
			react-native run-ios
			;;
		# encode url
		e )
			echo '##### installing eslint'
			npm install eslint
			echo '##### installing rallycoding'
			;;
		# for the help menu
		h )
			help
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
