import getopt
import sys
from tools import bashCmd, Message, Directory

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

# checks that the option exists
try:
	# returns options and remainder (if success)
	options, remainder = getopt.getopt(
		sys.argv[1:],
		'hv',
		['help',
		'verbose',
		'version',
		])
except getopt.GetoptError as err:
	print('ERROR:', err)
	sys.exit(1) # exit with error

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

# get the full executable path of our bash api script
dir = Directory()
api = dir.relPath('api.sh')
if remainder == ['d']:
	bashCmd(api, 'documentationMigration')
elif remainder == ['l']:
	bashCmd(api, 'linterInstallation')
elif remainder == ['r']:
	bashCmd(api, 'runProject')
else:
	print(version.content)
	print()
	print(help.content)
	sys.exit(1) # exit with error