require "open-uri"

open("https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E5%89%B5%E4%B8%96%E8%A8%98/1/") do |io|
	puts io.read
end
