# Sort elements in a natural / alphabetical / human friendly order.
#     require 'natural_sort'
#
#     NaturalSort::sort ['a1', 'a12', 'a2']   #=> ['a1', 'a2', 'a12']
# or
#     require 'natural_sort_kernel'
#
#     ['a', 'b', 'A', 'B'].natural_sort         #=> ['A', 'a', 'B', 'b']
module NaturalSort

  # call-seq:
  #    NaturalSort::sort(object)                #=> array
  #
  # Static method to sort.
  #
  # *Usage*
  #     NaturalSort::sort ['a1', 'a12', 'a2']   #=> ['a1', 'a2', 'a12']
  #
  # <tt>object</tt> can by any object that has to_a method.
  def self.sort(object)
    sorted = object.to_a.sort do |a,b|
      self.comparator(a,b)
    end
  end

  def self.naturalsort(object)
    warn('NaturalSort.naturalsort is deprecated and will be removed. Use NaturalSort.sort instead')
    self.sort(object)
  end

  # call-seq:
  #    NaturalSort::comparator(a, b)     #=> 0, 1, or -1
  #
  # Comparator function for sort method which can be used
  def self.comparator(a, b)
    sa, sb = a.to_s, b.to_s
    if (sa.downcase <=> sb.downcase) == 0 then sa <=> sb
    else
      na, nb = check_regexp(sa, sb)
      na <=> nb
    end
  end

  # call-seq:
  #    object.natural_sort          #=> array
  #
  # Main method to sort (other are just aliases).
  #
  # *Usage*
  #     require 'natural_sort'
  #     include NaturalSort
  #
  #     object.natural_sort         #=> ['a1', 'a2', 'a12']
  #
  # <tt>object</tt> can by any object that has a method <tt>to_a</tt>
  #
  # See <tt>natural_sort_kernel.rb</tt> to add natural sort methods to default ruby objects.
  # Enumerable , Array, Range, Set, Hash
  def natural_sort
    NaturalSort::sort(to_a)
  end

  private

  def self.check_regexp(sa, sb)
    regexp = /(^|\D+)(\d+|(\D$))/
    ma, mb = multireg(regexp,sa), multireg(regexp,sb)
    it = 0
    equal = 0
    ret = ["",""]
    numeric = /(\d+)/
    while (it < [ma.size,mb.size].min) and (equal==0)
      if (ma[it] and mb[it]) and (ma[it][1] and mb[it][1]) and (numeric.match ma[it][0] and numeric.match mb[it][0])
        l = [ma[it][2].size,mb[it][2].size].max
        ret = [format(ma[it], l), format(mb[it], l)]
      else
        ret = [ma[it][0].downcase, mb[it][0].downcase]
      end
      equal = ret[0] <=> ret[1]
      it+=1
    end
    return ret[0], ret[1]
  end

  def check_regexp(sa, sb)
    NaturalSort::check_regexp(sa, sb)
  end

  # format([a, 1], 3) => a001
  # add leading zero
  def self.format(match_data, length)
    match_data[1].gsub("_", "").downcase + ("%0#{length}d" % match_data[2].to_i)
  end

  def format(match_data, length)
    NaturalSort::format(match_data, length)
  end

  # return an array with
  # rgpx  matchdata on str
  def self.multireg(rgpx, str)
    result = []
    while rgpx.match(str)
      result.push rgpx.match(str)
      str = rgpx.match(str).post_match
    end
    result
  end

  def multireg(rgpx, str)
    NaturalSort::multireg(rgpx, str)
  end
end
