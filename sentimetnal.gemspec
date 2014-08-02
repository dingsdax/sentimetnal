# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sentimetnal/version'

Gem::Specification.new do |spec|
  spec.name          = "sentimetnal"
  spec.version       = Sentimetnal::VERSION
  spec.authors       = ["johdax"]
  spec.email         = ["johdax@gmail.com"]
  spec.summary       = %q{Sentiment analyzer}
  spec.description   = %q{Simple Ruby sentiment analyzer based on the AFINN word list. Returns a float value for the sentiment strength of an input text}
  spec.homepage      = "http://github.com/johdax/sentimetnal"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3"
  spec.add_development_dependency "guard", "~> 2.6"
  spec.add_development_dependency "guard-rspec", "~> 4.3"
end
