# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'natural_sort/version'

Gem::Specification.new do |spec|
  spec.name          = 'naturalsort'
  spec.version       = NaturalSort::VERSION
  spec.authors       = ['Benjamin Francisoud']
  spec.email         = ['pub.cog@gmail.com']
  spec.summary       = %q{NaturalSort is a simple library which implements a natural, human-friendly alphanumeric sort in Ruby}
  spec.description   = %q{Example: %w(1 2a A1 a11 A12 a2 a21 x__2 X_1).natural_sort => %w(1 2a A1 a11 A12 a2 a21 x__2 X_1)}
  spec.homepage      = 'http://rubyforge.org/projects/naturalsort/'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
