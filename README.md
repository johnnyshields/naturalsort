# NaturalSort

[![Build Status](https://secure.travis-ci.org/johnnyshields/naturalsort.png?branch=master)](http://travis-ci.org/johnnyshields/naturalsort)
[![Code Climate](https://codeclimate.com/github/johnnyshields/naturalsort.png)](https://codeclimate.com/github/johnnyshields/naturalsort)

NaturalSort is a simple library which implements a natural, human-friendly alphanumeric sort in Ruby.

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

or to optionally extend Ruby native objects:

```ruby
gem 'naturalsort', :require => 'natural_sort_kernel'
```

#### From Command Line

```cmd
$ gem install naturalsort
```

## Usage

#### Extend Ruby native enumerable objects

`require 'natural_sort_kernel'` adds `natural_sort` methods to all native Ruby enumerable objects (Array, Hash, etc...)

```ruby
   require 'natural_sort_kernel'

   sorted = %w(a b c A B C).natural_sort
```

#### Use as a module function

```ruby
   require 'natural_sort'  # unless using Bundler

   sorted = NaturalSort.sort %w(a b c d A B C D)
```

#### Use comparator function as a standalone

Adds `natural_sort` methods to Ruby native enumerable objects (Array, Hash, etc...)

```ruby
   person_1 = Person.new('Moe')
   person_2 = Person.new('Larry')
   person_3 = Person.new('Curly')

   [person_1, person_2, person_3].sort{|a,b| NaturalSort.comparator(a.name, b.name)}  #=> [person_3, person_2, person_1]

   sorted = %w(a b c A B C).natural_sort
```

#### Include into your own objects

Can be used to add `#natural_sort` method to on any enumerable object or any object which implements `#to_a`

```ruby
   class TodoList < Array
     include NaturalSort
   end

   todo_list = TodoList.new
   todo_list << 'Wash car'
   todo_list << 'Water plants'
   todo_list << 'Feed dog'

   todo_list.natural_sort  #=> ['Feed dog', 'Wash car', 'Water plants']
```

## Authors

* [Benjamin Francisoud](http://www.google.com/profiles/benjamin.francisoud)
* [Johnny Shields](http://github.com/johnnyshields) (version 1.2.0+)

## Contributing

Fork -> Patch -> Spec -> Push -> Pull Request

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
