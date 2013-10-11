require File.dirname(__FILE__) + '/test_helper.rb'
require File.dirname(__FILE__) + '/../lib/natural_sort.rb'

class MyClass
  include NaturalSort
  
  def initialize(array = Base)
    @array = array
  end
  
  def to_a
    @array
  end
end

# Test without include
class TestNaturalSortSelf < Minitest::Test
  def test_self
    assert_equal NaturalSort::BaseSorted, NaturalSort::naturalsort(NaturalSort::Base)
  end
end

# Test using include
class TestNaturalSort < Minitest::Test
  include NaturalSort
  
  def setup
    @obj = MyClass.new
  end
  
  def test_case_sensitive
    sorted = @obj.natural_sort
    assert_equal BaseSorted, sorted
  end
  
  def test_mixed
    obj = MyClass.new %w(a1 a12 A11 a2 a10 A3 a21 A29)
    assert_equal %w(a1 a2 A3 a10 A11 a12 a21 A29), obj.natural_sort
  end
  
  def test_numbers
    obj = MyClass.new %w(a1 a12 a11 a2 a10 a3 a21 a29)
    assert_equal %w(a1 a2 a3 a10 a11 a12 a21 a29), obj.natural_sort
  end

  def test_first_no_number
    obj = MyClass.new %w(aaa2 aaa3 aaa4 aaa)
    assert_equal %w(aaa aaa2 aaa3 aaa4), obj.natural_sort
  end

  def test_number_leading_zero
    obj = MyClass.new %w(A001 A08 A007 A003 A011 A20 A200)
    assert_equal %w(A001 A003 A007 A08 A011 A20 A200), obj.natural_sort
  end
end
