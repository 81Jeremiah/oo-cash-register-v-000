require 'pry'

class CashRegister
  attr_accessor :total, :last_transaction, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title,price, quantity = 1)
    @last_transaction = price * quantity
    @total = @last_transaction + @total
    new_arr = Array.new(quantity,title)
    @items << new_arr
    @items.flatten!
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."

    else
      @total = @total -  (@discount * 10)
     "After the discount, the total comes to $#{@total}."
     binding.pry
   end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
