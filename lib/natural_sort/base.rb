# frozen_string_literal: true

# Public: The public interface for NaturalSort module
# For method descriptions refer to NaturalSort::Engine
#
# Examples
#
#  require 'natural_sort'
#  NaturalSort.sort ['a1', 'a12', 'a2']  #=> ['a1', 'a2', 'a12']
#
#  # or
#
#  require 'natural_sort_kernel'
#  ['a', 'b', 'A', 'B'].natural_sort     #=> ['A', 'a', 'B', 'b']
module NaturalSort

  class << self
    extend Forwardable

    # Public: sort
    #
    # Signature
    #
    #   NaturalSort.sort(object)
    #
    # Refer to NaturalSort::Engine.sort
    def_delegator :'NaturalSort::Engine', :sort

    # Public: comparator
    #
    # Signature
    #
    #   NaturalSort.comparator(a, b)
    #
    # Refer to NaturalSort::Engine.comparator
    def_delegator :'NaturalSort::Engine', :comparator

    # Deprecated: Alias to NaturalSort.sort. Was deprecated in version 1.2.0.
    # To be removed in version 2.0.0 (according to semver)
    #
    # object - the object to sort, which must either be an Enumerable or implement #to_a to be meaningful.
    #
    # Returns a sorted version of the object.
    def naturalsort(object)
      warn('NaturalSort.naturalsort is deprecated and will be removed. Use NaturalSort.sort instead')
      NaturalSort::Engine.sort(object)
    end
  end

  # Public: Main method to sort (other are just aliases). To be used when including
  # NaturalSort into another object. Delegates to NaturalSort::Engine.sort
  #
  # Note that the object must either be an Enumerable or implement #to_a to be meaningful.
  #
  # Returns a sorted version of the object.
  #
  # Examples
  #
  #   require 'natural_sort'
  #
  #   class MyObject
  #     include NaturalSort
  #     def to_a
  #       ['a3, a2, a1']
  #     end
  #   end
  def natural_sort
    NaturalSort::Engine.sort(self)
  end
end
