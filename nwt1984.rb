htmlfile = "genesis01raw"
textfile = "genesis01"

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
		f.write(tmp)
	end
end
