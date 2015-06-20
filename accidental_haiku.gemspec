# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'accidental_haiku/version'

Gem::Specification.new do |spec|
  spec.name          = "accidental_haiku"
  spec.version       = AccidentalHaiku::VERSION
  spec.authors       = ["Ian Lloyd"]
  spec.email         = ["ian.w.lloyd@me.com"]
  spec.summary       = %q{Analyse a Twitter stream for accidental haikus.}
  spec.description   = %q{Performs rough analysis on Twitter tweets for haikus, with branching logic for working with 'em.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_dependency "celluloid", '~> 0.16.0'
  spec.add_dependency "celluloid-io", '~> 0.16.0'
  spec.add_dependency "twitter", "~> 5.0"
  spec.add_dependency "dbm", '~> 0.5'
  spec.add_dependency "humanize", '~> 1.1'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
