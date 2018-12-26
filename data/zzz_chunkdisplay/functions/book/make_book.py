#!/usr/bin/python3

import json
import sys

give = "give @p minecraft:written_book"
replace = "replaceitem entity @s weapon.mainhand minecraft:written_book"

def read_book(filename):
	with open(filename, 'r') as content:
		return json.load(content)


if __name__ == "__main__":
	if len(sys.argv) < 1:
		print("Usage: %s <infile>" % sys.argv[0])
		sys.exit(1)

	content = read_book(sys.argv[1])

	pages = []
	for page in content['pages']:
		pages.append(json.dumps(page, separators=(',', ':')))
		
	content['pages'] = pages

	result = json.dumps(content, separators=(',', ':'))

	command = give + result + '\n'

	with open("give_forceload.mcfunction", "w") as outfile:
		outfile.write(command)

	with open("give_noforceload.mcfunction", "w") as outfile:
		outfile.write(command)

	command = replace + result + '\n'

	with open("replace_forceload.mcfunction", "w") as outfile:
		outfile.write(command)

	with open("replace_noforceload.mcfunction", "w") as outfile:
		outfile.write(command)
