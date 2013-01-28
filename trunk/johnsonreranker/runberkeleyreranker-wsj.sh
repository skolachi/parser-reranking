MODELDIR=models/folded_berkeleysm6_nonfinal 
ESTIMATORNICKNAME=cvlm-l1c10P1 

cat expts/wsj/berkeley50best/sec22 | programs/features/best-parses -l $MODELDIR/features.gz $MODELDIR/$ESTIMATORNICKNAME-weights.gz > expts/wsj/reranked/wsj-sec22-berkeley-cvlmfolded-reranked
cat expts/wsj/berkeley50best/sec23 | programs/features/best-parses -l $MODELDIR/features.gz $MODELDIR/$ESTIMATORNICKNAME-weights.gz > expts/wsj/reranked/wsj-sec23-berkeley-cvlmfolded-reranked
cat expts/wsj/berkeley50best/sec24 | programs/features/best-parses -l $MODELDIR/features.gz $MODELDIR/$ESTIMATORNICKNAME-weights.gz > expts/wsj/reranked/wsj-sec24-berkeley-cvlmfolded-reranked
