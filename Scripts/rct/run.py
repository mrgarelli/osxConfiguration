# getopt_example.py
import getopt
import sys
import subprocess

import os
class _directory():
	def __init__(self):
		self.script = os.path.realpath(__file__)
		self.here = os.path.dirname(self.script)
	def relPath(self, partPath):
		fullPath = ''.join([self.here, '/', partPath])
		return fullPath


class _message():
	def __init__(self, content, display=False):
		self.display = display
		self.content = content
	def smartPrint(self):
		if self.display == True: print(self.content)

version = _message('Version: 1.0\n')

help = _message(
'''options
	-d: move all the documentation
	-h: help menu
	-l: setup eslint in a project directory
	-r: react-native run-ios\n'''
)

verbose = False
output_filename = 'default.out'

print('ARGV      :', sys.argv[1:])

# checks that the option exists
try:
	# returns options and remainder (if success)
	options, remainder = getopt.getopt(
		sys.argv[1:],
		'ho:v',
		['help',
		'output=',
		'verbose',
		'version',
		])
except getopt.GetoptError as err:
	print('ERROR:', err)
	sys.exit(1) # exit with error

# print('OPTIONS   :', options)

for opt, arg in options:
	if opt in ('-h', '--help'):
		help.display = True
	if opt in ('-o', '--output'):
		output_filename = arg
	elif opt in ('-v', '--verbose'):
		verbose = True
	elif opt == '--version':
		version.display = True

print('VERBOSE   :', verbose)
print('OUTPUT    :', output_filename)
print('REMAINING :', remainder)
print()

dir = _directory()

def bashCmd():
	api = dir.relPath('api.sh')
	command = '. ' + api + ' && documentationMigration'
	print(command)
	# subprocess.call(command)
	pipe = subprocess.Popen(['bash', '-c', command])

	output = pipe.communicate()[0]
	if output != None:
		print(output)

if remainder == ['d']:
	api = dir.relPath('api.sh')
	command = '. ' + api + ' && documentationMigration'
	print(command)
	# subprocess.call(command)
	pipe = subprocess.Popen(['bash', '-c', command])

output = pipe.communicate()[0]
print(output)

help.smartPrint()
version.smartPrint()
