# To Do
#	implement verbose

import sys
from syspy import Message, BashAPI, parseOptions, fail, succeed, getInputs

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
options, remainder = parseOptions(getInputs(), shortOpts, longOpts)

# deals with options accordingly
for opt, arg in options:
	if opt in ('-h', '--help'):
		help.display = True
		help.smartPrint()
		succeed()
	elif opt in ('-v', '--verbose'):
		verbose = True
	elif opt == '--version':
		version.display = True
		version.smartPrint()
		succeed()

api = BashAPI('api.sh')
if remainder == ['d']:
	output = api.cmd('documentationMigration')
elif remainder == ['l']:
	output = api.cmd('linterInstallation')
elif remainder == ['r']:
	output = api.cmd('runProject')
else:
	print('Wrapper for react-native')
	print()
	print(version.content)
	print()
	print(help.content)
	fail()

print(output)
