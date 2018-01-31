require ("minitest/autorun")
require ("minitest/rg")

require_relative ("../drink")

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("Vodka")

  end

  def test_get_name
    assert_equal("Vodka", @drink.name)
  end

end
