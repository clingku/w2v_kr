#!/usr/bin/env bash

# convert encoding: from utf-16le to utf-8
mkdir sjsm_utf8
cd 형태의미분석_말뭉치
find . -name "*.txt" -exec iconv -f utf-16le -t utf-8 {} -o ../sjsm_utf8/{} \;
cd ..


