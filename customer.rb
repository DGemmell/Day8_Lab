class Customer

  attr_reader :name, :wallet, :age

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end

  def buy_drink(drink)
   @wallet -= drink.price
  end

  def is_legal
   return @age >= 18
  end

end
