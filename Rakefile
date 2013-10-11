# -*- ruby -*-

require 'rubygems'
require 'hoe'
require './lib/natural_sort.rb'

Hoe.new('naturalsort', NaturalSort::VERSION) do |p|
  p.rubyforge_name = 'naturalsort'
  p.author = 'Benjamin Francisoud'
  p.email = 'pub.cog@gmail.com'
  p.summary = 'NaturalSort is a small and simple library to implements a natural or human friendly alphabetical sort in ruby.'
  p.description = p.paragraphs_of('README.txt', 2..5).join("\n\n")
  p.url = p.paragraphs_of('README.txt', 0).first.split(/\n/)[1..-1]
  p.changes = p.paragraphs_of('History.txt', 0..1).join("\n\n")
  p.remote_rdoc_dir = '' # Release to root
  p.need_zip = true
end

SVN = 'svn+ssh://cogito@rubyforge.org/var/svn/naturalsort'

task :svn_branch => [:clean] do
  `svn delete #{SVN}/branches/1.X -m "cleanup branch"`
  `svn copy #{SVN}/trunk #{SVN}/branches/1.X -m "create branch"`
end

task :svn_tag do
  `svn copy #{SVN}/trunk #{SVN}/tags/#{NaturalSort::VERSION} -m "create tag"`
end

# vim: syntax=Ruby
