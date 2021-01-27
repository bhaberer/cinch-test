# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cinch/test/version'

Gem::Specification.new do |gem|
  gem.name          = 'cinch-test'
  gem.version       = Cinch::Test::VERSION
  gem.authors       = ['Jay Adkisson', 'Brian Haberer']
  gem.email         = ['jay@jayferd.us']
  gem.summary       = %q(Helpers for testing Cinch Plugins)
  gem.description   = %q(A collection of utility methods, mocks and methods for testing Cinch plugins)
  gem.homepage      = 'http://github.com/jayferd/cinch-test'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(/^bin\//).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(/^(test|spec|features)\//)
  gem.require_paths = ['lib']


  gem.add_development_dependency 'rake', '~> 12.3.3'
  gem.add_development_dependency 'rspec', '~> 3'
  gem.add_development_dependency 'codeclimate-test-reporter', '~> 0.4'

  gem.add_dependency 'cinch', '~> 2'
end
