#!/usr/bin/env rake
# -*- mode: ruby -*-

require 'rubygems'
require './lib/natural_sort.rb'
require 'rake/testtask'

task default: :test

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/**/test_*.rb']
end
