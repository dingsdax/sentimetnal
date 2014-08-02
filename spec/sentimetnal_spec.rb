require 'sentimetnal'

describe "String tokenizer" do
  let(:text) { "This is a sentence to tokenize. Another sentence; to split into words!" }
  let(:tokenized_text) { text.tokenize }
  
  it "returns an array of correct size" do
    expect(tokenized_text).to       be_a(Array)
    expect(tokenized_text.count).to eq(12)
  end
  
  it "the array contains only words" do
    expect(tokenized_text).not_to include(".", ";", "!")
    expect(tokenized_text).to     include("this", "sentence", "tokenize", "words")
  end
end

describe "Sentiment Analyzer" do
  let(:analyzer) { Sentimetnal::Analyzer.new }
   
  describe "Sentiment Analyzer" do
    context "AFINN sentiment word list" do
      let(:word_list) { analyzer.word_list }
      
      it "loads the word list into a hash" do
        expect(word_list).to be_a(Hash)
      end
  
      it "returns a numeric value for a specific word" do
        expect(word_list[word_list.keys.sample]).to be_a(Float)
      end
    end 
  end
  
  context "sentiment analysis" do
    it "returns a float for sentiment strength" do
      expect(analyzer.sentiment("Not sure if this is good or bad?")).to be_a(Float)
    end
    
    it "returns a positive value for positive valence" do
      expect(analyzer.sentiment("The best & most delicious beef and friendly staff!")).to be > 0
    end
    
    it "returns a negative value for negative valence" do
      expect(analyzer.sentiment("WTF? Those horrible dishes gave me sleepless nights and stomach ache!")).to be < 0
    end
  end
  
  context "sentiment strength converter" do
    it "convert into a 5 star rating" do
      expect(analyzer.sentiment("The best & most delicious beef and friendly staff!").to_rating).to eq(4)
    end
    
    it "convert into a emoji" do
      expect(analyzer.sentiment("WTF? Those horrible dishes gave me sleepless nights and stomach ache!").to_emoji).to eq(":scream:")
    end
  end
end
