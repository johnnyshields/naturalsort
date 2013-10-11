NaturalSort
http://naturalsort.rubyforge.org/

== Description:
  
NaturalSort is a small and simple library to implements a natural or human alphabetical sort in ruby.
It's sometimes call: 
* natural sort
* alpha sort
* alphabetical sort
* alphanum sort

Examples: 
  ['a1', 'a11', 'a12', 'a2', 'a21']       => ['a1', 'a2', 'a11', 'a12','a21']
  ['a', 'b', 'c', 'A', 'B', 'C']          => ['A', 'a', 'B', 'b', 'C', 'c']
  ['x__2', 'x_1']                         => ['x_1', 'x__2']
  ['x2-y08', 'x2-g8', 'x2-y7', 'x8-y8']   => ['x2-g8', 'x2-y7', 'x2-y08', 'x8-y8']
* ['x02-y08', 'x02-g8', 'x2-y7', 'x8-y8'] => ['x02-g8', 'x2-y7', 'x02-y08', 'x8-y8']

== Features:
  
* sort case insensitive
* sort filename matching pattern "abc1", "abc12", "abc2" in the correct order
* sort filename matching pattern "a1b2"
* sort underscore insensitive

== Install:

* sudo gem install naturalsort

== Synopsis:

=== Usage N°1 - Add to your ruby default objects
Add natural sort methods to ruby default object (Array, Hash, etc...)

  require 'natural_sort_kernel'
  
  sorted = ['a', 'b', 'c', 'd', 'A', 'B', 'C', 'D'].natural_sort
  ...

=== Usage N°2  - Use only one method

  require 'natural_sort'
  
  sorted = NaturalSort::naturalsort ['a', 'b', 'c', 'd', 'A', 'B', 'C', 'D']

== About

* Rubyforge project page http://rubyforge.org/projects/naturalsort
* Author: Benjamin Francisoud http://www.google.com/profiles/benjamin.francisoud

== Related Links

Links related to the alphabetical sorting problem:
* http://www.codinghorror.com/blog/archives/001018.html
* http://sourcefrog.net/projects/natsort/
* http://be2.php.net/natsort
* http://www.wellho.net/forum/Programming-in-Python-and-Ruby/Python-Sort-Order.html
* http://www.davekoelle.com/alphanum.html
* http://rikkus.info/arch/sensible_sort.rb
* http://weblog.masukomi.org/2007/12/10/alphabetical-asciibetical
* http://nedbatchelder.com/blog/200712.html#e20071211T054956

== License:

(The MIT License)

Copyright (c) 2007 Benjamin Francisoud

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
