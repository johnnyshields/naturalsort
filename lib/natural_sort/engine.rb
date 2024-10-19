# frozen_string_literal: true

# Internal: Singleton module which sorts elements in a natural,
# human-friendly alphanumeric order.
module NaturalSort::Engine

  # Internal: Main Regexp used to in natural sorting
  REGEXP = /(^|\D+)(\d+|(\D$))/

  # Internal: A Regexp used to detect numeric substrings
  NUMERIC = /(\d+)/

  class << self

    # Internal: Static method to sort.
    #
    # object - any object that is enumerable or has a #to_a method.
    #
    # Returns a sorted version of the object.
    #
    # Examples:
    #
    #   NaturalSort.sort ['a1', 'a12', 'a2']  #=> ['a1', 'a2', 'a12']
    def sort(object)
      Array(object).sort do |a,b|
        self.comparator(a,b)
      end
    end

    # Internal: Comparator function used for sorting, which can be
    # used as a standalone.
    #
    # a - the left-hand side of the comparator
    # b - the right-hand side of the comparator
    #
    # Returns 0, 1, or -1
    #
    # Examples
    #
    #   [person1, person2, person3].sort{|a,b| NaturalSort.comparator(a.name, b.name)}
    def comparator(a, b)
      sa, sb = a.to_s, b.to_s
      if (sa.downcase <=> sb.downcase) == 0 then sa <=> sb
      else
        na, nb = check_regexp(sa, sb)
        na <=> nb
      end
    end

    private

    def check_regexp(sa, sb)
      ma, mb = multireg(REGEXP,sa), multireg(REGEXP,sb)
      it = 0
      equal = 0
      ret = [sa, sb]
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
    def format(match_data, length)
      match_data[1].gsub('_', '').downcase + ("%0#{length}d" % match_data[2].to_i)
    end

    # return an array with
    # regexp matchdata on str
    def multireg(regpexp, str)
      result = []
      while regpexp.match(str)
        result.push regpexp.match(str)
        str = regpexp.match(str).post_match
      end
      result
    end
  end
end
