# coding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'natural_sort/version'

Gem::Specification.new do |spec|
  spec.name          = 'naturalsort'
  spec.version       = NaturalSort::Version::VERSION
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
  spec.add_development_dependency 'rake'
end
