require("minitest/autorun")
require("minitest/rg")

require_relative("../pub")
require_relative("../drink")
require_relative("../customer")

class PubTest < MiniTest::Test
  def setup
    @pub = Pub.new("The Clockwork")
    @drink = Drink.new("Wine", 5)
    @customer1 = Customer.new("Jack", 30, 20)
    @customer2 = Customer.new("Victor", 10, 15)

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

  def test_sell_drink_legal
    @pub.sell_drink(@drink, @customer1)
    assert_equal(5, @pub.till)
  end

  def test_sell_drink_illegal
    @pub.sell_drink(@drink, @customer2)
    assert_equal(0, @pub.till)
  end


  def test_check_age
    assert_equal(true, @customer1.is_legal)
  end

  def test_check_age__underage
    assert_equal(false, @customer2.is_legal)
  end

  def test_sell_buy_drink_over18
    @pub.sell_drink(@drink, @customer1)
    @customer1.buy_drink(@drink)
    assert_equal(5, @pub.till)
    assert_equal(25, @customer1.wallet)
  end

  def test_sell_buy_drink_under18
    @pub.sell_drink(@drink, @customer2)
    @customer1.buy_drink(@drink)
    assert_equal(0, @pub.till)
    assert_equal(10, @customer2.wallet)
  end




end
