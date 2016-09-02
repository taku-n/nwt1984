#!/usr/sbin/ruby

mecab_output_file = "genesis01.out"
textfile = "genesis01"

input= File.read(mecab_output_file)

File.open(textfile, "w") do |f|
	input.each_line do |line|
		tmp = line.sub(/\t.*/, "")
		f.write(tmp)
	end
end
