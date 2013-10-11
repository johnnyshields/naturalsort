require File.dirname(__FILE__) + '/test_helper.rb'
require File.dirname(__FILE__) + '/../lib/natural_sort.rb'

# Test without include
class TestNaturalSortAlone < Minitest::Test
  def test_simple
    assert_equal TestHelper::SimpleSorted, NaturalSort.sort(TestHelper::SimpleUnsorted)
  end

  def test_complex
    assert_equal TestHelper::ComplexSorted, NaturalSort.sort(TestHelper::ComplexUnsorted)
  end

  def test_alphanum
    assert_equal TestHelper::AlphanumSorted, NaturalSort.sort(TestHelper::AlphanumUnsorted)
  end
end
