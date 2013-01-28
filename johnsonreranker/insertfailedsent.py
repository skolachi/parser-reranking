import os
import sys
import re

f1 = open(sys.argv[1])
line = f1.readline()
#estimator = sys.argv[2]
dummy = '(S1 ())'
pfilename = sys.argv[2]

while line != '':
	fields = line.split()	
	missingsentid = fields[-1]
	lindex = int(missingsentid) - 1 
	#filename = fields[-2].split('/')[-1]
	#filename = fields[-2]
	#pfilename = filename.rstrip('-50best.out')+'-berkeley-%s-reranked.out'%(estimator)
	#print pfilename, missingsentid
	# Insert (((..))) at the lindex 
	os.system('head -n %d %s > tmp'%(lindex,pfilename))
	os.system('echo "%s" >> tmp'%(dummy))
	os.system('tail -n +%d %s >> tmp'%(lindex+1,pfilename))
	os.system('mv tmp %s'%(pfilename))
	line = f1.readline()

f1.close()
