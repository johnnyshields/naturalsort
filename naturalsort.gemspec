# coding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'natural_sort/version'

Gem::Specification.new do |spec|
  spec.name          = 'naturalsort'
  spec.version       = NaturalSort::Version::VERSION
  spec.authors       = ['Johnny Shields']
  spec.email         = 'info@tablecheck.com'
  spec.summary       = %q{NaturalSort is a simple library which implements a natural, human-friendly alphanumeric sort in Ruby}
  spec.description   = %q{Example: %w[1 2a A1 a11 A12 a2 a21 x__2 X_1].natural_sort => %w[1 2a A1 a11 A12 a2 a21 x__2 X_1]}
  spec.homepage      = 'https://github.com/johnnyshields/naturalsort'
  spec.license       = 'MIT'
  spec.files         = Dir.glob('lib/**/*') + %w[CHANGELOG.md LICENSE README.md]
  spec.require_paths = ['lib']

  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'rake'
end
