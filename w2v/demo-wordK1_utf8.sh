make
time ./word2vec -train ./dataK/sj_semtag1010_UOUs_utf8.txt -output vectorsK1a.bin -cbow 1 -size 200 -window 8 -negative 25 -hs 0 -sample 1e-4 -threads 20 -binary 1 -iter 15
./distance ./vectorsK1a.bin
