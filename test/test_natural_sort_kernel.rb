require File.dirname(__FILE__) + '/test_helper.rb'
require File.dirname(__FILE__) + '/../lib/natural_sort_kernel.rb'

class TestEnum
  include Enumerable
  def to_a
    NaturalSort::Base
  end
end

class TestNaturalSortKernel < Test::Unit::TestCase
  
  def test_empty
    assert_equal(['', ''], ['', ''].natural_sort)
  end
  
  def test_enum
    enum = TestEnum.new
    assert_equal NaturalSort::BaseSorted, enum.natural_sort
  end
  
  def test_array
    assert_equal NaturalSort::BaseSorted, NaturalSort::Base.natural_sort
  end
  
  def test_range
    expected = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
    assert_equal expected, (1..21).natural_sort
  end
  
  def test_set
    set = Set.new NaturalSort::Base
    assert_equal NaturalSort::BaseSorted, set.natural_sort
  end
  
  def test_hash
    expected = [["A", "value"], ["a", "value"], ["B", "value"], ["b", "value"],
                ["C", "value"], ["c", "value"], ["D", "value"], ["d", "value"]]
    hash = { "a" => "value", "b" => "value", "c" => "value", "d" => "value", "A" => "value", "B" => "value", "C" => "value", "D" => "value" }
    assert_equal expected, hash.natural_sort
  end
  
    def test_identical_simple
      assert_equal(['x', 'x'], ['x', 'x'].natural_sort)
    end

    def test_identical_two_groups
      assert_equal(['x1', 'x1'], ['x1', 'x1'].natural_sort)
    end

    def test_ordered_simple
      assert_equal(['x', 'y'], ['x', 'y'].natural_sort)
    end

    def test_ordered_simple_start_backwards
      assert_equal(['x', 'y'], ['y', 'x'].natural_sort)
    end

    def test_ordered_two_groups
      assert_equal(['x1', 'x2'], ['x1', 'x2'].natural_sort)
    end

    def test_ordered_two_groups_start_backwards
      assert_equal(['x1', 'x2'], ['x2', 'x1'].natural_sort)
    end

    def test_ordered_two_groups_separated
      assert_equal(['x_1', 'x_2'], ['x_2', 'x_1'].natural_sort)
    end

    def test_ordered_two_groups_separated_different_distances
      assert_equal(['x_1', 'x__2'], ['x__2', 'x_1'].natural_sort)
    end

    def test_ordered_two_groups_separated_different_distances_swapped
      assert_equal(['x__1', 'x_2'], ['x_2', 'x__1'].natural_sort)
    end

    def test_three_groups
      assert_equal(
        ['hello 2 world', 'hello world', 'hello world 2'],
        ['hello world', 'hello world 2', 'hello 2 world'].natural_sort
      )
    end
    
    def test_decimal
      # 1.001 < 1.002 < 1.010 < 1.02 < 1.1 < 1.3
      # assert_equal ['1.001', '1.002', '1.010', '1.02', '1.1', '1.3'], ['1.1', '1.001', '1.002', '1.010', '1.02', '1.3'].natural_sort, "FIXME this test doesn't pass and need to be fix"
    end
    
    def test_multiple_string_number
      # x2-g8 < x2-y7 < x2-y08 < x8-y8
      assert_equal ['x2-g8', 'x2-y7', 'x2-y08', 'x8-y8'], ['x2-y08', 'x8-y8', 'x2-y7', 'x2-g8'].natural_sort
    end
    
    # same as test_multiple_string_number but first number has (sometimes) leading zero
    def test_multiple_string_number_2
      # x2-g8 < x2-y7 < x2-y08 < x8-y8
      assert_equal ['x02-g8', 'x2-y7', 'x02-y08', 'x8-y8'], ['x02-y08', 'x8-y8', 'x2-y7', 'x02-g8'].natural_sort
    end
    
    def test_filename
      assert_equal ["img1.png", "img2.png", "img10.png", "img12.png"], ["img12.png", "img10.png", "img2.png", "img1.png"].natural_sort
    end
    
    def test_complex
      assert_equal NaturalSort::ComplexSorted, NaturalSort::Complex.natural_sort
    end
end
