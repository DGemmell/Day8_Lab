require("minitest/autorun")
require("minitest/rg")

require_relative("../pub")

class PubTest < MiniTest::Test
  def setup
    @pub = Pub.new("The Clockwork")
  end


  def test_get_name
    assert_equal("The Clockwork", @pub.name)
  end

  def test_get_till
    assert_equal(0, @pub.till)
  end

  def test_get_drinks__emptydrinks
    assert_equal(0, @pub.count_drinks)
  end


end
