# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'komachi-develop/version'

Gem::Specification.new do |gem|
  gem.name          = "komachi-develop"
  gem.version       = Komachi::Develop::VERSION
  gem.authors       = ["Takumi MIURA"]
  gem.email         = ["mitaku1104@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency 'pry-rails'
  gem.add_dependency 'better_errors'
  gem.add_dependency 'binding_of_caller'
  # gem.add_dependency 'view_source_map'
  # gem.add_dependency 'zeus'
  # gem.add_dependency 'annotate'
  # gem.add_dependency 'rails-erd'
  # gem.add_dependency 'letter_opener'
end
