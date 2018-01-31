require ("minitest/autorun")
require ("minitest/rg")

require_relative ("../drink")

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("Vodka", 5, 1)

  end

  def test_get_name
    assert_equal("Vodka", @drink.name)
  end

  def test_get_price
    assert_equal(5, @drink.price)
  end

  def test_units
    assert_equal(1, @drink.alcohol_unit)
  end

end
