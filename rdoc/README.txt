Not working yet :(

To use it, copy it into the “rdoc/generators/template/html” directory of your Ruby installation (i.e., on my machine, ”/usr/local/lib/ruby/1.8/rdoc/generators/template/html” or "C:\ruby\lib\ruby\1.8\rdoc\generators\template\html"). Then, when you run rdoc, just pass “—template=naturalsort” and you should be good to go.

—template=naturalsort —title="NaturalSort - A small and simple library to implements a natural or human alphabetical sort in ruby."


# http://rake.rubyforge.org/classes/Rake/RDocTask.html
Rake::RDocTask.new(:rdoc_naturalsort) do |rd|
  rd.main = "README.txt"
  rd.rdoc_files.include("README.txt", "History.txt", "lib/**/*.rb")
  rd.rdoc_dir='html'
  rd.options << "-T=kilmer"
end