#!/usr/sbin/sh

echo "processing html"

for htmlfile in $(find nwt1984html -type f)
do
	output0=$(echo $htmlfile | cut -d "/" -f 2-3 | cut -d "." -f 1)
	output="nwt1984txt/${output0}.txt"

	echo "htmlfile"
	echo $htmlfile
	echo "output"
	echo $output

	./html2txt.rb $htmlfile $output
done

echo "mecab is running"
mecab genesis01.txt -o genesis01.out

echo "removing details"
./rm-details.rb
