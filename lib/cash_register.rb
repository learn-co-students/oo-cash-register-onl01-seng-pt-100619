require 'pry'

class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity, :last

  def initialize(discount = 0, total = 0)
    @title = []
    self.discount = discount
    self.total = total
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    temp_total = price * quantity
      quantity.times do
          @title << title
      end
      @last = temp_total
    @total += temp_total

  end

  def apply_discount
    if @discount == 0
      return_string =  "There is no discount to apply."
      return return_string
    else
    decimal_discount = @discount.to_f / 100
    reduction = @total * decimal_discount
    @total -= reduction

    return_string = "After the discount, the total comes to $#{@total.to_i}."
    return return_string
    end

  end

  def items
    @title
  end

  def void_last_transaction

    @total -= @last

  end


end
  
