require "sentimetnal/core_ext/string"
require "sentimetnal/core_ext/numeric"
require "sentimetnal/version"

module Sentimetnal
  WORD_LIST = File.join(File.dirname(__dir__), "data", "AFINN-111.txt")
  
  class Analyzer
    attr_reader :word_list
    
    def initialize(word_list_file=WORD_LIST)
      @word_list = load_word_list(word_list_file)
    end
    
    def sentiment(string)
      words = string.tokenize
      sentiments = words.map { |w| word_list[w] || 0 }
      
      sentiments.inject(:+)/Math.sqrt(sentiments.size)
    end
    
    private
    def load_word_list(word_list_file)
      word_list_data = IO.readlines(word_list_file, :encoding => "UTF-8")
      word_list_data.map {|w|
        t = w.split("\t")
        [t[0].downcase, t[1].chomp.to_f]
      }.to_h
    end
  end
end