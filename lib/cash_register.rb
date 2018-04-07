require 'pry'

class CashRegister
  attr_accessor :total, :last_transaction, :discount
    #@@items = []
  def initialize(discount = 0)
    #@total = total
    @total = 0
    @discount = discount
    @items = []
    #@total
  #  binding.pry
  end

  # def discount
  #   @employee_discount
  # end

  def add_item(title,price, quantity = 1)
    @last_transaction = price * quantity
    @total = @last_transaction + @total
    @total
    #binding.pry
    new_arr = Array.new(quantity,title)
    @items << new_arr
    @items.flatten!
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."

    else
      @total = @total -  (@discount * 10)
    #binding.pry
     "After the discount, the total comes to $#{@total}."
   end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction
    @total
    #binding.pry
  end

end
