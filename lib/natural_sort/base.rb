# Sort elements in a natural, human-friendly alphanumeric order.
#     require 'natural_sort'
#
#     NaturalSort.sort ['a1', 'a12', 'a2']   #=> ['a1', 'a2', 'a12']
# or
#     require 'natural_sort_kernel'
#
#     ['a', 'b', 'A', 'B'].natural_sort         #=> ['A', 'a', 'B', 'b']
module NaturalSort

  REGEXP = /(^|\D+)(\d+|(\D$))/
  NUMERIC = /(\d+)/

  # call-seq:
  #    NaturalSort.sort(object)                #=> array
  #
  # Static method to sort.
  #
  # *Usage*
  #     NaturalSort.sort ['a1', 'a12', 'a2']   #=> ['a1', 'a2', 'a12']
  #
  # <tt>object</tt> can by any object that has to_a method.
  def self.sort(object)
    Array(object).sort do |a,b|
      self.comparator(a,b)
    end
  end

  # Deprecated alias to NaturalSort.sort
  def self.naturalsort(object)
    warn('NaturalSort.naturalsort is deprecated and will be removed. Use NaturalSort.sort instead')
    self.sort(object)
  end

  # call-seq:
  #    NaturalSort.comparator(a, b)     #=> 0, 1, or -1
  #
  # Comparator function which can be used as a standalone
  #
  # *Usage*
  #     [obj1, obj2].sort{|a,b| NaturalSort.comparator(a.name, b.name)}
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
    NaturalSort.sort(self)
  end

  private

  def self.check_regexp(sa, sb)
    ma, mb = multireg(REGEXP,sa), multireg(REGEXP,sb)
    it = 0
    equal = 0
    ret = ['', '']
    while (it < [ma.size,mb.size].min) and (equal==0)
      if (ma[it] and mb[it]) and (ma[it][1] and mb[it][1]) and (NUMERIC.match ma[it][0] and NUMERIC.match mb[it][0])
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

  # format([a, 1], 3) => a001
  # add leading zero
  def self.format(match_data, length)
    match_data[1].gsub('_', '').downcase + ("%0#{length}d" % match_data[2].to_i)
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
end
