#!/usr/sbin/ruby

mecab_output_file = ARGV[0]
textfile = ARGV[1]

if !(FileTest.exist?("nwt1984")) then
	Dir.mkdir("nwt1984")  # 最終結果を保持する
end

%r</(.*)/> =~ mecab_output_file
dir_name = $1

if !(FileTest.exist?("nwt1984/" + dir_name)) then
	Dir.mkdir("nwt1984/" + dir_name)
end

input = File.read(mecab_output_file)

print("mecab_output_file: ", mecab_output_file, "\n")
print("textfile: ", textfile, "\n")

File.open(textfile, "w") do |f|
	input.each_line do |line|
		tmp = line.sub(/\t.*/, "")
		f.write(tmp)
	end
end
