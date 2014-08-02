require 'sentimetnal'
require 'json'
require 'open-uri'

url = "http://tupalo.com/en/api/v1/reviews.json?public_id=2n5s5m"
reviews = JSON.parse(open(url).read)

analyzer = Sentimetnal::Analyzer.new

reviews.map do |review|
  sentiment = analyzer.sentiment(review["review"])
  puts "#{review["review"][0..100]}..."
  puts "sentiment: #{sentiment.round(2)} | tupalo_rating: #{review["rating"]} | sentiment_rating: #{sentiment.to_rating} | emoji: #{sentiment.to_emoji}"
  puts ""
end