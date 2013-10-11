# NaturalSort

NaturalSort is a simple library which implements a natural, human-friendly alphanumeric sort in Ruby.

#### Fork from RubyForge-hosted NaturalSort gem

This Github repo `johnyshields/naturalsort` is an update of the Benjamin Francisoud's original NaturalSort gem,
hosted on RubyForge at http://rubyforge.org/projects/naturalsort. It has been forked from version 1.1.1
which was released on 2010-07-21. The first new release from this Github repo is version 1.2.0.

## Examples

```ruby
   %w(a1 a11 a12 a2 a21).natural_sort  #=>  %w(a1 a2 a11 a12 a21)
   %w(a b c A B C).natural_sort        #=>  %w(A a B b C c)
   %w(x__2 x_1).natural_sort           #=>  %w(x_1 x__2)
   %w(x2-y08 x2-g8 x2-y7 x8-y8).natural_sort    #=>  %w(x2-g8 x2-y7 x2-y08 x8-y8)
   %w(x02-y08 x02-g8 x2-y7 x8-y8).natural_sort  #=>  %w(x02-g8 x2-y7 x02-y08 x8-y8)
```

## Features

* Sort case insensitive
* Sort underscore insensitive
* Sort filename matching patterns
* Sort mixed alpha and numeric "abc1", "abc12", "abc2", "a1b2" in correct order

## Install

#### With Bundler

In your `Gemfile`:

```ruby
gem 'naturalsort'
```

#### From Command Line

```cmd
$ gem install naturalsort
```

## Synopsis

### Usage Pattern #1 - Add to your ruby default objects
Add natural sort methods to ruby default object (Array, Hash, etc...)

```ruby
   require 'natural_sort_kernel'

   sorted = %w(a b c A B C).natural_sort
   ...
```

### Usage Pattern #2  - Use only one method

```ruby
   require 'natural_sort'

   sorted = NaturalSort::sort %w(a b c d A B C D)
```

## Authors

* [Benjamin Francisoud](http://www.google.com/profiles/benjamin.francisoud)
* [Johnny Shields](http://github.com/johnnyshields) (version 1.2.0+)

## Related Links

Links related to the natural sorting problem:

* http://www.codinghorror.com/blog/archives/001018.html
* http://sourcefrog.net/projects/natsort/
* http://be2.php.net/natsort
* http://www.wellho.net/forum/Programming-in-Python-and-Ruby/Python-Sort-Order.html
* http://www.davekoelle.com/alphanum.html
* http://rikkus.info/arch/sensible_sort.rb
* http://weblog.masukomi.org/2007/12/10/alphabetical-asciibetical
* http://nedbatchelder.com/blog/200712.html#e20071211T054956

## License

Copyright (c) 2007 Benjamin Francisoud

Licensed under the MIT License. Refer to LICENSE for details.
