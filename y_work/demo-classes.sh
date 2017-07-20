#!/bin/bash
: <<'END'
# with the sample of word2vec
time ../word2vec/word2vec -train ../sample/text8 -output classes_text8.txt -cbow 1 -size 200 -window 8 -negative 25 -hs 0 -sample 1e-4 -threads 20 -iter 15 -classes 500
END

# with 세종의미분석말뭉치
time ../word2vec/word2vec -train ../w2v/sj_semtag1010_UOUs_utf8.txt -output classes_sjsem.txt -cbow 1 -size 200 -window 8 -negative 25 -hs 0 -sample 1e-4 -threads 20 -iter 15 -classes 500