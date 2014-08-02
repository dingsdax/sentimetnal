# Sentimetnal

No, it's not a typo :grin:. According to [Google Translate](https://translate.google.com/#en/eo/sentimetnal) this is the Esperanto word for 'sentimental'.

Sentimetnal is a very simple [sentiment analyzer](https://en.wikipedia.org/wiki/Sentiment_analysis) based on [Finn Årup Nielsen](http://finnaarupnielsen.wordpress.com/)'s [AFINN](http://www2.imm.dtu.dk/pubdb/views/publication_details.php?id=6010) word list.

It is basically a Ruby port of [https://gist.github.com/fnielsen/4183541/](https://gist.github.com/fnielsen/4183541/)
It returns a float for the sentiment strength of an input text. 

Positive values are for a positive valence, negative values for a negative valence.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sentimetnal'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sentimetnal

## Usage

```ruby
require 'sentimetnal'

analyzer = Sentimetnal::Analyzer.new
sentiment = analyzer.sentiment("The best & most delicious beef and friendly staff!" # 1.7677669529663687

sentiment.to_rating # 4

sentinment.to_emoji # :smile:
```

## Contributing

I'd like to try translating the word list and prepare it for the use with other languages...

1. Fork it ( https://github.com/[my-github-username]/sentimetnal/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Ruby NLP

Unfortunately Ruby does not provide something like [NLTK](http://www.nltk.org/). But there are some interesting gems and code. I'm compiling my favorite ones [here](https://gist.github.com/johdax/ad517d63fbf7b5bd29c4)