# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pingdom/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ross Paffett"]
  gem.email         = ["ross@rosspaffett.com"]
  gem.description   = "Command line client for the Pingdom API"
  gem.summary       = "Command line client for the Pingdom API"
  gem.homepage      = "https://github.com/raws/pingdom-cli"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "pingdom-cli"
  gem.require_paths = ["lib"]
  gem.version       = Pingdom::VERSION

  gem.add_dependency "httparty", "~> 0.9.0"
  gem.add_dependency "json_select", "~> 0.1.3"
  gem.add_dependency "thor", "~> 0.16.0"
end
