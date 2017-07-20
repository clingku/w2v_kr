#!/bin/bash
: <<'END'
../word2vec/distance ./vectors_text8.bin < en_wordlist.txt > distance_out_text8.txt
cat distance_out_text8.txt
END

../word2vec/distance ./vectors_sjsem.bin < kr_wordlist.txt > distance_out_sjsem.txt
cat distance_out_sjsem.txt

