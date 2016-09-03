#!/usr/sbin/sh

# get the main text from html
html2txt() {
	echo "processing html"

	for htmlfile in $(find nwt1984html -type f)  # ディレクトリを除いたリスト
	do
		output0=$(echo $htmlfile | cut -d "/" -f 2-3 | cut -d "." -f 1)
		output="nwt1984txt/${output0}.txt"

		echo "htmlfile"
		echo $htmlfile
		echo "output"
		echo $output

		./html2txt.rb $htmlfile $output
	done
}

# run MeCab for the main text
run_mecab() {
	echo "mecab is running"

	mkdir nwt1984out  # MeCab の出力ファイルを保持

	for txtfile in $(find nwt1984txt -type f)  # ディレクトリを除いたリスト
	do
		echo "txtfile"
		echo $txtfile

		outfile0=$(echo $txtfile | cut -d "/" -f 2-3 | cut -d "." -f 1)
		outfile="nwt1984out/${outfile0}.out"

		echo "outfile"
		echo $outfile

		# 書名のディレクトリを作成する
		dir_name=$(echo $txtfile | cut -d "/" -f 2)
		mkdir "nwt1984out/${dir_name}"

		mecab $txtfile -o $outfile
	done
}

# removing details from the main text
remove_details() {
	echo "removing details"

	for mecab_out in $(find nwt1984out -type f)  # ディレクトリを除いたリスト
	do
		final_output0=$(echo $mecab_out | cut -d "/" -f 2-3 | cut -d "." -f 1)
		final_output="nwt1984/${final_output0}"

		./rm-details.rb $mecab_out $final_output
	done
}

#html2txt
#run_mecab
remove_details
