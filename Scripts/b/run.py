import sys
from syspy import Message, BashAPI, parseOptions, fail, succeed, getInputs

version = Message('Version: 1.0')

help = Message(
'''options
	-e: edit bash config and source on exit
	--el: edit local bash config and source on exit
	-h, --help: help menu
	--version: version'''
)

verbose = False

shortOpts = 'ehv'
longOpts = [
	'el',
	'help',
	'verbose',
	'version',
	]

# parsed options and gathers remainder (command)
options, remainder = parseOptions(getInputs(), shortOpts, longOpts)

api = BashAPI('api.sh')

# deals with options accordingly
for opt, arg in options:
	if opt in ('-e'):
		api.cmd('edit')
	if opt in ('--el'):
		api.cmd('editLocal')
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

if remainder == ['d']:
	output = api.cmd('documentationMigration')
elif remainder == ['l']:
	output = api.cmd('linterInstallation')
elif remainder == ['r']:
	output = api.cmd('runProject')
else:
	print('Wrapper for bash')
	print()
	print(version.content)
	print()
	print(help.content)
	fail()

print(output)
