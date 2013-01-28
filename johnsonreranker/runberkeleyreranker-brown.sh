MODELDIR=models/folded_berkeleysm6_nonfinal 
ESTIMATORNICKNAME=cvlm-l1c10P1 

cat expts/brown/50best/brown-cf-berkeley-50best-charniakformat.out | programs/features/best-parses -l $MODELDIR/features.gz $MODELDIR/$ESTIMATORNICKNAME-weights.gz > expts/brown/reranked/brown-cf-berkeley-cvlmfolded-reranked.out
cat expts/brown/50best/brown-cg-berkeley-50best-charniakformat.out | programs/features/best-parses -l $MODELDIR/features.gz $MODELDIR/$ESTIMATORNICKNAME-weights.gz > expts/brown/reranked/brown-cg-berkeley-cvlmfolded-reranked.out
cat expts/brown/50best/brown-ck-berkeley-50best-charniakformat.out | programs/features/best-parses -l $MODELDIR/features.gz $MODELDIR/$ESTIMATORNICKNAME-weights.gz > expts/brown/reranked/brown-ck-berkeley-cvlmfolded-reranked.out
cat expts/brown/50best/brown-cl-berkeley-50best-charniakformat.out | programs/features/best-parses -l $MODELDIR/features.gz $MODELDIR/$ESTIMATORNICKNAME-weights.gz > expts/brown/reranked/brown-cl-berkeley-cvlmfolded-reranked.out
cat expts/brown/50best/brown-cm-berkeley-50best-charniakformat.out | programs/features/best-parses -l $MODELDIR/features.gz $MODELDIR/$ESTIMATORNICKNAME-weights.gz > expts/brown/reranked/brown-cm-berkeley-cvlmfolded-reranked.out
cat expts/brown/50best/brown-cn-berkeley-50best-charniakformat.out | programs/features/best-parses -l $MODELDIR/features.gz $MODELDIR/$ESTIMATORNICKNAME-weights.gz > expts/brown/reranked/brown-cn-berkeley-cvlmfolded-reranked.out
cat expts/brown/50best/brown-cp-berkeley-50best-charniakformat.out | programs/features/best-parses -l $MODELDIR/features.gz $MODELDIR/$ESTIMATORNICKNAME-weights.gz > expts/brown/reranked/brown-cp-berkeley-cvlmfolded-reranked.out
cat expts/brown/50best/brown-cr-berkeley-50best-charniakformat.out | programs/features/best-parses -l $MODELDIR/features.gz $MODELDIR/$ESTIMATORNICKNAME-weights.gz > expts/brown/reranked/brown-cr-berkeley-cvlmfolded-reranked.out
