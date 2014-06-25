# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lunartic/version'

Gem::Specification.new do |gem|
  gem.name          = 'lunartic'
  gem.version       = Lunartic::VERSION
  gem.authors       = ["Brian O'Keefe"]
  gem.email         = ['brian@bokstuff.com']
  gem.summary       = %q{Calculate the approximate phase of the moon on a given date}
  gem.description   = gem.summary
  gem.homepage      = 'https://github.com/brianokeefe/lunartic'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rspec', '~> 3.0.0'
end
