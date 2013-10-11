# Changelog

## 1.2.0 - 2013-10-10

* DEPRECATION: deprecate NaturalSort::naturalsort and replace with NaturalSort::sort
* Upgrade tests to use Minitest gem
* Improve test readability by using %w() syntax for arrays
* Migrate to Github. Add .gitignore, Gemfile, gemspec, and cleanup Rakefile
* Remove rdoc generator which was not working

## 1.1.1 - 2010-07-21

* Fix typo error in some unit test
* Remove copy/paste between naturalsort and natural_sort methods
* Added samples in rdoc
* Adding contribution from Sobe http://pastie.caboo.se/139803 (thanks mate)
* Sort complex text list (see test_natural_sort_kernel.rb:107))
* Fix more complex [string][number] pattern like:
   * ["x2-y08", "x2-g8", "x2-y7", "x8-y8"].natural_sort => ["x2-g8", "x2-y7", "x2-y08", "x8-y8"]
   * ["x02-y08", "x02-g8", "x2-y7", "x8-y8"].natural_sort => ["x02-g8", "x2-y7", "x02-y08", "x8-y8"]
* Fix bug in Range ordering:
   * (1..21).natural_sort => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]

## 1.1.0 - 2008-01-08

* Improve documentation to get better google results
* Remove alias methods: <tt>sort_natural, sort_alpha, alpha_sort, sort_alphabetical, alphabetical_sort, sort_alphanum, alphanum_sort</tt>

## 1.0.1 - 2007-12-18

* Fix problem using as a static method
* Refactoring code

## 1.0.0 - 2007-12-14

* Project creation
