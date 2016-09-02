#!/usr/sbin/sh

echo "processing html"
./html2txt.rb

echo "mecab is running"
mecab genesis01.txt -o genesis01.out

echo "removing details"
./rm-details.rb
