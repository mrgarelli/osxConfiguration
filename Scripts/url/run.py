import sys
import urllib.parse as ul
from syspy import Message, BashAPI, parseOptions, fail, succeed, getInputs

version = Message('Version: 1.0')

help = Message(
'''Package for url (de/en)coding
options
	-h, --help: help menu
	--version: version

commands
	de: decode the url
	en: encode the url'''
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

try:
	command, ins = remainder
except:
	print(version.content)
	print()
	print(help.content)
	fail()

if command == 'de':
	output = ul.unquote_plus(ins)
elif command == 'en':
	output = ul.quote_plus(ins)
else:
	print(version.content)
	print()
	print(help.content)
	fail()

print(output)
