import os 
import sys
import re

failedlines = open(sys.argv[1]).readlines()
fname = open(sys.argv[2],'r')
parses = fname.readlines()

for f in failedlines:
	lineid = f.split(':')[0]
	pattern = f.split(':')[1]
	parses.insert(int(lineid)-1,pattern)

fname = open(sys.argv[2],'w')

for p in parses:
	fname.write(p)

fname.close()
