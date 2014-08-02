require 'sentimetnal'
require 'rapgenius'

happy_song = RapGenius::Song.find(139968) # Get Lucky
sad_song   = RapGenius::Song.find(111264) # Run to the Hills

analyzer = Sentimetnal::Analyzer.new

happy_song_sentiment = analyzer.sentiment(happy_song.lines.map(&:lyric).join("").gsub(/\[.*\]/,""))
sad_song_sentiment = analyzer.sentiment(sad_song.lines.map(&:lyric).join("").gsub(/\[.*\]/,""))

puts "Get Lucky: #{happy_song_sentiment}"
puts "Run to the Hills: #{sad_song_sentiment}"
