require "date"
require "pry"

class Item
    attr_accessor :price, :name
    def initialize(price,name)
      @price = price
      @name = name
    end
end

class Grapes < Item
  def initialize
    @price = 15
    @name = "grapes"
  end

  def grapes_discount
    # if Date.new(today) = Tuesday @price == 3
    #if quantity +=3 @price == 7
      #buy 4 get 1 orange
    # end
  end
end

class Oranges < Item
  def initialize
      @price = 5
      @name = "oranges"
    end
    
  def oranges_discount
    # if Date.new(today) = Tuesday @price == 3
    # if @quantity +=3 @price == 10
      #buy 3 pay for 2
    # end
  end
end

class Apples < Item
  def initialize
      @price = 10
      @name = "apples"
      #buy 2 pay 1
    end
    
  def apples_discount
    if date.Date.today
    end
  end
end

class Cart
  def initialize(array_of_products)
      @array_of_products = array_of_products
      @all_items = {}
  end

  def total
      @total_cost = 0
      @array_of_products.each do |item|
        @total_cost += item.price
      end
    puts "Your total is #{@total_cost} without tax."
  end
end

my_basket = [Grapes.new, Apples.new, Grapes.new, Grapes.new, Grapes.new, Grapes.new, Oranges.new, Apples.new ]

my_cart = Cart.new(my_basket)

my_cart.total
