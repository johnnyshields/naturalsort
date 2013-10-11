# Add natural sorting method to default Kernel ruby objects.

# Add NaturalSort methods.
#     require 'natural_sort_kernel'
#     
#     ['a1', 'a12', 'a2'].natural_sort     #=> ['a1', 'a2', 'a12']
#     ['a', 'b', 'A', 'B'].natural_sort    #=> ['A', 'a', 'B', 'b']
module Enumerable
  include NaturalSort
end

# Add NaturalSort methods.
#     require 'natural_sort_kernel'
#     
#     ['a1', 'a12', 'a2'].natural_sort     #=> ['a1', 'a2', 'a12']
#     ['a', 'b', 'A', 'B'].natural_sort    #=> ['A', 'a', 'B', 'b']
class Array
  include NaturalSort
end

# Add NaturalSort methods.
#     require 'natural_sort_kernel'
#     
#     (1..11).natural_sort    #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
class Range
  alias :natural_sort :to_a
end

# Add NaturalSort methods.
#     require 'set'
#     require 'natural_sort_kernel'
#     
#     Set.new(['a', 'b', 'c', 'd', 'A', 'B', 'C', 'D']).natural_sort    #=> ['A', 'a', 'B', 'b', 'C', 'c', 'D', 'd']
if defined?(Set)
  class Set
    include NaturalSort
  end
end

# Add NaturalSort methods.
#     require 'natural_sort_kernel'
#     
#     { "a" => "value", "b" => "value", "A" => "value", "B" => "value" }.natural_sort
#     => [["A", "value"], ["a", "value"], ["B", "value"], ["b", "value"]]
class Hash
  include NaturalSort
end
