# To Do
#	implement verbose

import sys
from tools import Message, BashAPI, parseOptions

version = Message('Version: 1.0')

help = Message(
'''options
	-h, --help: help menu
	--version: version

commands
	d: move all the documentation
	l: setup eslint in a project directory
	r: react-native run-ios'''
)

verbose = False

shortOpts = 'hv'
longOpts = [
	'help',
	'verbose',
	'version',
	]

# parsed options and gathers remainder (command)
options, remainder = parseOptions(sys.argv[1:], shortOpts, longOpts)

# deals with options accordingly
for opt, arg in options:
	if opt in ('-h', '--help'):
		help.display = True
		help.smartPrint()
		sys.exit(0) # exit properly
	elif opt in ('-v', '--verbose'):
		verbose = True
	elif opt == '--version':
		version.display = True
		version.smartPrint()
		sys.exit(0) # exit properly

api = BashAPI('api.sh')
if remainder == ['d']:
	api.cmd('documentationMigration')
elif remainder == ['l']:
	api.cmd('linterInstallation')
elif remainder == ['r']:
	api.cmd('runProject')
else:
	print('Wrapper for react-native')
	print()
	print(version.content)
	print()
	print(help.content)
	sys.exit(1) # exit with error