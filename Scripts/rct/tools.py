import subprocess
import os

class Directory():
	def __init__(self):
		self.script = os.path.realpath(__file__)
		self.here = os.path.dirname(self.script)
	def relPath(self, partPath):
		fullPath = ''.join([self.here, '/', partPath])
		return fullPath

class BashAPI():
	def __init__(self, file):
		# get the full executable path of our bash api script
		dir = Directory()
		self.api = dir.relPath(file)

	# runs a function within a bash script
	def cmd(self, function):
		# syntax to run a function within a bash script
		command = ''.join(['. ', self.api, ' && ', function])
		# print(command)
		# create a pipeline to a subprocess
		pipe = subprocess.Popen(['bash', '-c', command])
		# run command and gather output
		output = pipe.communicate()[0]
		# print output (if there are errors)
		if output != None:
			print(output)

class Message():
	def __init__(self, content, display=False):
		self.display = display
		self.content = content
	def smartPrint(self):
		if self.display == True: print(self.content)

