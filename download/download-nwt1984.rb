#!/usr/sbin/ruby

require "open-uri"

class Genesis
	NAME        = "genesis"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E5%89%B5%E4%B8%96%E8%A8%98/"
	MAX_CHAPTER = 50
end

class Exodus
	NAME        = "exodus"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E5%87%BA%E3%82%A8%E3%82%B8%E3%83%97%E3%83%88%E8%A8%98/"
	MAX_CHAPTER = 40
end

class Leviticus
	NAME        = "leviticus"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%AC%E3%83%93%E8%A8%98/"
	MAX_CHAPTER = 27
end

class Numbers
	NAME        = "numbers"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E6%B0%91%E6%95%B0%E8%A8%98/"
	MAX_CHAPTER = 36
end

class Deuteronomy
	NAME        = "deuteronomy"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E7%94%B3%E5%91%BD%E8%A8%98/"
	MAX_CHAPTER = 34
end

class Joshua
	NAME        = "joshua"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%A8%E3%82%B7%E3%83%A5%E3%82%A2/"
	MAX_CHAPTER = 24
end

class Judges
	NAME        = "judges"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E8%A3%81%E3%81%8D%E4%BA%BA/"
	MAX_CHAPTER = 21
end

class Ruth
	NAME        = "ruth"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%AB%E3%83%84/"
	MAX_CHAPTER = 4
end

class FstSamuel
	NAME        = "1samuel"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%B5%E3%83%A0%E3%82%A8%E3%83%AB%E7%AC%AC%E4%B8%80/"
	MAX_CHAPTER = 31
end

class SndSamuel
	NAME        = "2samuel"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%B5%E3%83%A0%E3%82%A8%E3%83%AB%E7%AC%AC%E4%BA%8C/"
	MAX_CHAPTER = 24
end

class FstKings
	NAME        = "1kings"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E5%88%97%E7%8E%8B%E7%AC%AC%E4%B8%80/"
	MAX_CHAPTER = 22
end

class SndKings
	NAME        = "2kings"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E5%88%97%E7%8E%8B%E7%AC%AC%E4%BA%8C/"
	MAX_CHAPTER = 25
end

class FstChronicles
	NAME        = "1chronicles"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E6%AD%B4%E4%BB%A3%E7%AC%AC%E4%B8%80/"
	MAX_CHAPTER = 29
end

class SndChronicles
	NAME        = "2chronicles"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E6%AD%B4%E4%BB%A3%E7%AC%AC%E4%BA%8C/"
	MAX_CHAPTER = 36
end

class Ezra
	NAME        = "ezra"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%A8%E3%82%BA%E3%83%A9/"
	MAX_CHAPTER = 10
end

class Nehemiah
	NAME        = "nehemiah"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%8D%E3%83%98%E3%83%9F%E3%83%A4/"
	MAX_CHAPTER = 13
end

class Esther
	NAME        = "esther"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%A8%E3%82%B9%E3%83%86%E3%83%AB/"
	MAX_CHAPTER = 10
end

class Job
	NAME        = "job"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%A8%E3%83%96/"
	MAX_CHAPTER = 42
end

class Psalms
	NAME        = "psalms"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E8%A9%A9%E7%B7%A8/"
	MAX_CHAPTER = 150
end

class Proverbs
	NAME        = "proverbs"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E7%AE%B4%E8%A8%80/"
	MAX_CHAPTER = 31
end

class Ecclesiastes
	NAME        = "ecclesiastes"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E4%BC%9D%E9%81%93%E3%81%AE%E6%9B%B8/"
	MAX_CHAPTER = 12
end

class SongOfSolomon
	NAME        = "songofsolomon"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%BD%E3%83%AD%E3%83%A2%E3%83%B3%E3%81%AE%E6%AD%8C/"
	MAX_CHAPTER = 8
end

class Isaiah
	NAME        = "isaiah"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%A4%E3%82%B6%E3%83%A4/"
	MAX_CHAPTER = 66
end

class Jeremiah
	NAME        = "jeremiah"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%A8%E3%83%AC%E3%83%9F%E3%83%A4/"
	MAX_CHAPTER = 52
end

class Lamentations
	NAME        = "lamentations"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E5%93%80%E6%AD%8C/"
	MAX_CHAPTER = 5
end

class Ezekiel
	NAME        = "ezekiel"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%A8%E3%82%BC%E3%82%AD%E3%82%A8%E3%83%AB/"
	MAX_CHAPTER = 48
end

class Daniel
	NAME        = "daniel"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%80%E3%83%8B%E3%82%A8%E3%83%AB/"
	MAX_CHAPTER = 12
end

class Hosea
	NAME        = "hosea"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%9B%E3%82%BB%E3%82%A2/"
	MAX_CHAPTER = 14
end

class Joel
	NAME        = "joel"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%A8%E3%82%A8%E3%83%AB/"
	MAX_CHAPTER = 3
end

class Amos
	NAME        = "amos"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%A2%E3%83%A2%E3%82%B9/"
	MAX_CHAPTER = 9
end

class Obadiah
	NAME        = "obadiah"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%AA%E3%83%90%E3%83%87%E3%83%A4/"
	MAX_CHAPTER = 1
end

class Jonah
	NAME        = "jonah"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%A8%E3%83%8A/"
	MAX_CHAPTER = 4
end

class Micah
	NAME        = "micah"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%9F%E3%82%AB/"
	MAX_CHAPTER = 7
end

class Nahum
	NAME        = "nahum"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%8A%E3%83%9B%E3%83%A0/"
	MAX_CHAPTER = 3
end

class Habakkuk
	NAME        = "habakkuk"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%8F%E3%83%90%E3%82%AF%E3%82%AF/"
	MAX_CHAPTER = 3
end

class Zephaniah
	NAME        = "zephaniah"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%BC%E3%83%91%E3%83%8B%E3%83%A4/"
	MAX_CHAPTER = 3
end

class Haggai
	NAME        = "haggai"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%8F%E3%82%AC%E3%82%A4/"
	MAX_CHAPTER = 2
end

class Zechariah
	NAME        = "zechariah"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%BC%E3%82%AB%E3%83%AA%E3%83%A4/"
	MAX_CHAPTER = 14
end

class Malachi
	NAME        = "malachi"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%9E%E3%83%A9%E3%82%AD/"
	MAX_CHAPTER = 4
end

class Matthew
	NAME        = "matthew"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%9E%E3%82%BF%E3%82%A4/"
	MAX_CHAPTER = 28
end

class Mark
	NAME        = "mark"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%9E%E3%83%AB%E3%82%B3/"
	MAX_CHAPTER = 16
end

class Luke
	NAME        = "luke"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%AB%E3%82%AB/"
	MAX_CHAPTER = 24
end

class John
	NAME        = "john"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%A8%E3%83%8F%E3%83%8D/"
	MAX_CHAPTER = 21
end

class Acts
	NAME        = "acts"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E4%BD%BF%E5%BE%92/"
	MAX_CHAPTER = 28
end

class Romans
	NAME        = "romans"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%AD%E3%83%BC%E3%83%9E/"
	MAX_CHAPTER = 16
end

class FstCorinthians
	NAME        = "1corinthians"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%B3%E3%83%AA%E3%83%B3%E3%83%88%E7%AC%AC%E4%B8%80/"
	MAX_CHAPTER = 16
end

class SndCorinthians
	NAME        = "2corinthians"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%B3%E3%83%AA%E3%83%B3%E3%83%88%E7%AC%AC%E4%BA%8C/"
	MAX_CHAPTER = 13
end

class Galatians
	NAME        = "galatians"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%AC%E3%83%A9%E3%83%86%E3%82%A2/"
	MAX_CHAPTER = 6
end

class Ephesians
	NAME        = "ephesians"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%A8%E3%83%95%E3%82%A7%E3%82%BD%E3%82%B9/"
	MAX_CHAPTER = 6
end

class Philippians
	NAME        = "philippians"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%95%E3%82%A3%E3%83%AA%E3%83%94/"
	MAX_CHAPTER = 4
end

class Colossians
	NAME        = "colossians"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%82%B3%E3%83%AD%E3%82%B5%E3%82%A4/"
	MAX_CHAPTER = 4
end

class FstThessalonians
	NAME        = "1thessalonians"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%86%E3%82%B5%E3%83%AD%E3%83%8B%E3%82%B1%E7%AC%AC%E4%B8%80/"
	MAX_CHAPTER = 5
end

class SndThessalonians
	NAME        = "2thessalonians"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%86%E3%82%B5%E3%83%AD%E3%83%8B%E3%82%B1%E7%AC%AC%E4%BA%8C/"
	MAX_CHAPTER = 3
end

class FstTimothy
	NAME        = "1timothy"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%86%E3%83%A2%E3%83%86%E7%AC%AC%E4%B8%80/"
	MAX_CHAPTER = 6
end

class SndTimothy
	NAME        = "2timothy"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%86%E3%83%A2%E3%83%86%E7%AC%AC%E4%BA%8C/"
	MAX_CHAPTER = 4
end

class Titus
	NAME        = "titus"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%86%E3%83%88%E3%82%B9/"
	MAX_CHAPTER = 3
end

class Philemon
	NAME        = "philemon"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%95%E3%82%A3%E3%83%AC%E3%83%A2%E3%83%B3/"
	MAX_CHAPTER = 1
end

class Hebrews
	NAME        = "hebrews"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%98%E3%83%96%E3%83%A9%E3%82%A4/"
	MAX_CHAPTER = 13
end

class James
	NAME        = "james"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%A4%E3%82%B3%E3%83%96/"
	MAX_CHAPTER = 5
end

class FstPeter
	NAME        = "1peter"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%9A%E3%83%86%E3%83%AD%E7%AC%AC%E4%B8%80/"
	MAX_CHAPTER = 5
end

class SndPeter
	NAME        = "2peter"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%9A%E3%83%86%E3%83%AD%E7%AC%AC%E4%BA%8C/"
	MAX_CHAPTER = 3
end

class FstJohn
	NAME        = "1john"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%A8%E3%83%8F%E3%83%8D%E7%AC%AC%E4%B8%80/"
	MAX_CHAPTER = 5
end

class SndJohn
	NAME        = "2john"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%A8%E3%83%8F%E3%83%8D%E7%AC%AC%E4%BA%8C/"
	MAX_CHAPTER = 1
end

class TrdJohn
	NAME        = "3john"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%A8%E3%83%8F%E3%83%8D%E7%AC%AC%E4%B8%89/"
	MAX_CHAPTER = 1
end

class Jude
	NAME        = "jude"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E3%83%A6%E3%83%80/"
	MAX_CHAPTER = 1
end

class Revelation
	NAME        = "revelation"
	BASE_URI    = "https://www.jw.org/ja/%E5%87%BA%E7%89%88%E7%89%A9/%E8%81%96%E6%9B%B8/bi12/%E5%90%84%E6%9B%B8/%E5%95%93%E7%A4%BA/"
	MAX_CHAPTER = 22
end

# download a scripture
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

		sleep(4)
	end

	Dir.chdir("..")

	puts("done")
end

Dir.mkdir("nwt1984html")
Dir.chdir("nwt1984html")

download(Genesis::NAME,          Genesis::BASE_URI,          Genesis::MAX_CHAPTER)
download(Exodus::NAME,           Exodus::BASE_URI,           Exodus::MAX_CHAPTER)
download(Leviticus::NAME,        Leviticus::BASE_URI,        Leviticus::MAX_CHAPTER)
download(Numbers::NAME,          Numbers::BASE_URI,          Numbers::MAX_CHAPTER)
download(Deuteronomy::NAME,      Deuteronomy::BASE_URI,      Deuteronomy::MAX_CHAPTER)
download(Joshua::NAME,           Joshua::BASE_URI,           Joshua::MAX_CHAPTER)
download(Judges::NAME,           Judges::BASE_URI,           Judges::MAX_CHAPTER)
download(Ruth::NAME,             Ruth::BASE_URI,             Ruth::MAX_CHAPTER)
download(FstSamuel::NAME,        FstSamuel::BASE_URI,        FstSamuel::MAX_CHAPTER)
download(SndSamuel::NAME,        SndSamuel::BASE_URI,        SndSamuel::MAX_CHAPTER)
download(FstKings::NAME,         FstKings::BASE_URI,         FstKings::MAX_CHAPTER)
download(SndKings::NAME,         SndKings::BASE_URI,         SndKings::MAX_CHAPTER)
download(FstChronicles::NAME,    FstChronicles::BASE_URI,    FstChronicles::MAX_CHAPTER)
download(SndChronicles::NAME,    SndChronicles::BASE_URI,    SndChronicles::MAX_CHAPTER)
download(Ezra::NAME,             Ezra::BASE_URI,             Ezra::MAX_CHAPTER)
download(Nehemiah::NAME,         Nehemiah::BASE_URI,         Nehemiah::MAX_CHAPTER)
download(Esther::NAME,           Esther::BASE_URI,           Esther::MAX_CHAPTER)
download(Job::NAME,              Job::BASE_URI,              Job::MAX_CHAPTER)
download(Psalms::NAME,           Psalms::BASE_URI,           Psalms::MAX_CHAPTER)
download(Proverbs::NAME,         Proverbs::BASE_URI,         Proverbs::MAX_CHAPTER)
download(Ecclesiastes::NAME,     Ecclesiastes::BASE_URI,     Ecclesiastes::MAX_CHAPTER)
download(SongOfSolomon::NAME,    SongOfSolomon::BASE_URI,    SongOfSolomon::MAX_CHAPTER)
download(Isaiah::NAME,           Isaiah::BASE_URI,           Isaiah::MAX_CHAPTER)
download(Jeremiah::NAME,         Jeremiah::BASE_URI,         Jeremiah::MAX_CHAPTER)
download(Lamentations::NAME,     Lamentations::BASE_URI,     Lamentations::MAX_CHAPTER)
download(Ezekiel::NAME,          Ezekiel::BASE_URI,          Ezekiel::MAX_CHAPTER)
download(Daniel::NAME,           Daniel::BASE_URI,           Daniel::MAX_CHAPTER)
download(Hosea::NAME,            Hosea::BASE_URI,            Hosea::MAX_CHAPTER)
download(Joel::NAME,             Joel::BASE_URI,             Joel::MAX_CHAPTER)
download(Amos::NAME,             Amos::BASE_URI,             Amos::MAX_CHAPTER)
download(Obadiah::NAME,          Obadiah::BASE_URI,          Obadiah::MAX_CHAPTER)
download(Jonah::NAME,            Jonah::BASE_URI,            Jonah::MAX_CHAPTER)
download(Micah::NAME,            Micah::BASE_URI,            Micah::MAX_CHAPTER)
download(Nahum::NAME,            Nahum::BASE_URI,            Nahum::MAX_CHAPTER)
download(Habakkuk::NAME,         Habakkuk::BASE_URI,         Habakkuk::MAX_CHAPTER)
download(Zephaniah::NAME,        Zephaniah::BASE_URI,        Zephaniah::MAX_CHAPTER)
download(Haggai::NAME,           Haggai::BASE_URI,           Haggai::MAX_CHAPTER)
download(Zechariah::NAME,        Zechariah::BASE_URI,        Zechariah::MAX_CHAPTER)
download(Malachi::NAME,          Malachi::BASE_URI,          Malachi::MAX_CHAPTER)
download(Matthew::NAME,          Matthew::BASE_URI,          Matthew::MAX_CHAPTER)
download(Mark::NAME,             Mark::BASE_URI,             Mark::MAX_CHAPTER)
download(Luke::NAME,             Luke::BASE_URI,             Luke::MAX_CHAPTER)
download(John::NAME,             John::BASE_URI,             John::MAX_CHAPTER)
download(Acts::NAME,             Acts::BASE_URI,             Acts::MAX_CHAPTER)
download(Romans::NAME,           Romans::BASE_URI,           Romans::MAX_CHAPTER)
download(FstCorinthians::NAME,   FstCorinthians::BASE_URI,   FstCorinthians::MAX_CHAPTER)
download(SndCorinthians::NAME,   SndCorinthians::BASE_URI,   SndCorinthians::MAX_CHAPTER)
download(Galatians::NAME,        Galatians::BASE_URI,        Galatians::MAX_CHAPTER)
download(Ephesians::NAME,        Ephesians::BASE_URI,        Ephesians::MAX_CHAPTER)
download(Philippians::NAME,      Philippians::BASE_URI,      Philippians::MAX_CHAPTER)
download(Colossians::NAME,       Colossians::BASE_URI,       Colossians::MAX_CHAPTER)
download(FstThessalonians::NAME, FstThessalonians::BASE_URI, FstThessalonians::MAX_CHAPTER)
download(SndThessalonians::NAME, SndThessalonians::BASE_URI, SndThessalonians::MAX_CHAPTER)
download(FstTimothy::NAME,       FstTimothy::BASE_URI,       FstTimothy::MAX_CHAPTER)
download(SndTimothy::NAME,       SndTimothy::BASE_URI,       SndTimothy::MAX_CHAPTER)
download(Titus::NAME,            Titus::BASE_URI,            Titus::MAX_CHAPTER)
download(Philemon::NAME,         Philemon::BASE_URI,         Philemon::MAX_CHAPTER)
download(Hebrews::NAME,          Hebrews::BASE_URI,          Hebrews::MAX_CHAPTER)
download(James::NAME,            James::BASE_URI,            James::MAX_CHAPTER)
download(FstPeter::NAME,         FstPeter::BASE_URI,         FstPeter::MAX_CHAPTER)
download(SndPeter::NAME,         SndPeter::BASE_URI,         SndPeter::MAX_CHAPTER)
download(FstJohn::NAME,          FstJohn::BASE_URI,          FstJohn::MAX_CHAPTER)
download(SndJohn::NAME,          SndJohn::BASE_URI,          SndJohn::MAX_CHAPTER)
download(TrdJohn::NAME,          TrdJohn::BASE_URI,          TrdJohn::MAX_CHAPTER)
download(Jude::NAME,             Jude::BASE_URI,             Jude::MAX_CHAPTER)
download(Revelation::NAME,       Revelation::BASE_URI,       Revelation::MAX_CHAPTER)
