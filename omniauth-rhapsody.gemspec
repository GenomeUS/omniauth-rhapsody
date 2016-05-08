# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-rhapsody/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-rhapsody"
  gem.version       = Omniauth::Rhapsody::VERSION
  gem.authors       = ["Matt Fitz-Henry"]
  gem.email         = ["matt@geno.me\n"]
  gem.description   = %q{OmniAuth strategy for Rhapsody}
  gem.summary       = %q{OmniAuth strategy for Rhapsody}
  gem.homepage      = "https://github.com/GenomeUS/omniauth-rhapsody.git"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
end
