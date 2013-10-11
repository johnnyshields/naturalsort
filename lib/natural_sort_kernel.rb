# Add natural sorting method to default Kernel ruby objects.
require File.dirname(__FILE__) + '/natural_sort.rb'
require 'set'

# Add NaturalSort methods.
#     require 'natural_sort_kernel'
#     
#     ['a1', 'a12', 'a2'].alphanum_sort         #=> ['a1', 'a2', 'a12']
#     ['a', 'b', 'A', 'B'].alphanum_sort        #=> ['A', 'a', 'B', 'b']
module Enumerable
  include NaturalSort
end

# Add NaturalSort methods.
#     require 'natural_sort_kernel'
#     
#     ['a1', 'a12', 'a2'].alphanum_sort         #=> ['a1', 'a2', 'a12']
#     ['a', 'b', 'A', 'B'].alphanum_sort        #=> ['A', 'a', 'B', 'b']
class Array
  include NaturalSort
end

# Add NaturalSort methods.
#     require 'natural_sort_kernel'
#     
#     (1..21).alphanum_sort         #=> [1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 2, 20, 21, 3, 4, 5, 6, 7, 8, 9]
class Range
  include NaturalSort
end

# Add NaturalSort methods.
#     require 'set'
#     require 'natural_sort_kernel'
#     
  #     Set.new(['a', 'b', 'c', 'd', 'A', 'B', 'C', 'D']).alphanum_sort         #=> ['A', 'a', 'B', 'b', 'C', 'c', 'D', 'd']
class Set
  include NaturalSort
end

# Add NaturalSort methods.
#     require 'natural_sort_kernel'
#     
#     { "a" => "value", "b" => "value", "c" => "value", "d" => "value", "A" => "value", "B" => "value", "C" => "value", "D" => "value" }.alphanum_sort
#     => [["A", "value"], ["a", "value"], ["B", "value"], ["b", "value"], ["C", "value"], ["c", "value"], ["D", "value"], ["d", "value"]]
class Hash
  include NaturalSort
end
