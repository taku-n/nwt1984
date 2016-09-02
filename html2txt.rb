#!/usr/sbin/ruby

htmlfile = "genesis01.html"
textfile = "genesis01.txt"

html = File.read(htmlfile)

File.open(textfile, "w") do |f|
	html.each_line do |line|
		tmp = line.gsub(/<a\s.*?<\/a>/, "")
		tmp = tmp.gsub(/<u>/, "")
		tmp = tmp.gsub(/<\/u>/, "")
		tmp = tmp.gsub(/<span\s.*?>/, "")
		tmp = tmp.gsub(/<\/span>/, "")
		tmp = tmp.gsub(/<sup\s.*?>/, "")
		tmp = tmp.gsub(/<\/sup>/, "")
		tmp = tmp.sub(/^\s+/, "")
		if /^\u00A0/ =~ tmp then  # U+A0 は，端末では ? で表示される文字
			tmp = tmp.sub(/^\u00A0/, "")
			tmp.chomp!    # 改行コードを削除
			f.write(tmp)
		end
	end
end
