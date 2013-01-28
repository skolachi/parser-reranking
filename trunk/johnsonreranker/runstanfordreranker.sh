#!/bin/sh

# This script will run the reranker on the kbest output of the stanford parser

MODELDIR=models/stanford50spnonfinal

# There is only one reranking model available
ESTIMATORNICKNAME=cvlm-l1c10P1

pid="$$"

# 1. Pick best parsing after reranking
python programs/prepare-data/parseFormatConvertor.py stanford $* 2> "failedsentids.$pid" | programs/features/best-parses -l $MODELDIR/features.gz $MODELDIR/$ESTIMATORNICKNAME-weights.gz > "/tmp/rerankedOutput.$pid"
# 2. Insert empty parses for sentences which parser failed to give parses for
python insertfailedsent.py "failedsentids.$pid" "/tmp/rerankedOutput.$pid"

# 3. Redirect output from file to stdout
###  NOTE::
#While running the reranker in the anusaaraka pipeline:

# 1. 
# 2. To replace the S1 with ROOT and to bring it to stanford convention,
# uncomment the following sed
cat "/tmp/rerankedOutput.$pid" | sed 's/^(S1/(ROOT/' 

# 4. Remove temporary files
rm "failedsentids.$pid" "/tmp/rerankedOutput.$pid"
