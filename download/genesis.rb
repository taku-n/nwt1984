require "open-uri"

class Genesis
	NAME = "genesis"
	BASE_URI  = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E5%89%B5%E4%B8%96%E8%A8%98/"
	MAX_CHAPTER = 50
end

def download(name, base_uri, max_chapter)
	print("downloading ", name, "\n")

	Dir.mkdir(name)
	Dir.chdir(name)

	for i in 1..max_chapter do
		puts(i)

		if max_chapter == 1 then
			filename = name + ".html"
		elsif max_chapter < 10 then
			filename = name + i.to_s + ".html"
		elsif max_chapter < 100 then
			filename = name + sprintf("%02d", i) + ".html"  # 0 埋めする
		else
			filename = name + sprintf("%03d", i) + ".html"  # 0 埋めする
		end

		uri = base_uri + i.to_s + "/"
		File.open(filename, "wb") do |f|
			text = open(uri, "r:utf-8").read
			f.write text.encode("utf-8")
		end
	end

	Dir.chdir("..")

	puts("done")
end

download(Genesis::NAME, Genesis::BASE_URI, Genesis::MAX_CHAPTER)
