require File.dirname(__FILE__) + '/test_helper.rb'
require File.dirname(__FILE__) + '/../lib/natural_sort.rb'

# Test without include
class TestNaturalSortAlone < Minitest::Test
  def test_alone
    assert_equal TestHelper::BaseSorted, NaturalSort.sort(TestHelper::Base)
  end
end
