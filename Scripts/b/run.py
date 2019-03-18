import sys
import os
from syspy import Message, BashAPI, parseOptions, fail, succeed, getInputs, editor

version = Message('Version: 1.0')

help = Message(
'''options
	-e: edit bash config and source on exit
	--el: edit local bash config and source on exit
	-h, --help: help menu
	--version: version'''
)

verbose = False

bashrc = os.path.expanduser('~/.bashrc')
locrc = os.path.expanduser('~/.locrc.sh')

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
toEdit = None

# deals with options accordingly
for opt, arg in options:
	if opt in ('-e'):
		toEdit = bashrc
	elif opt in ('--el'):
		toEdit = locrc
	elif opt in ('-h', '--help'):
		help.display = True
		help.smartPrint()
		succeed()
	elif opt in ('-v', '--verbose'):
		verbose = True
	elif opt == '--version':
		version.display = True
		version.smartPrint()
		succeed()

output = ''

if toEdit != None:
	editor(toEdit)
	output = api.cmd('sourceBash', shell=True)
else:
	output = api.cmd('bash', args=remainder)

print(output)
