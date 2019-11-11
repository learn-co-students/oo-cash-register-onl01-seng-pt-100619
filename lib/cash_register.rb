class CashRegister 
   
   attr_accessor :total, :cash_register, :cash_register_with_discount, :last_transaction
   
   
    def initialize(discount=0)
    @total = 0
    @discount = discount
    @all_items = []
    @last_transaction = []
  end

  def discount
    @discount
  end

  def total
    @total
  end


 def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @all_items << item
    end
    @last_transaction << price * quantity

  end

  
    def apply_discount
    if discount != 0
    @total = @total - (@total * @discount/100)
    return "After the discount, the total comes to $800."
  else
    "There is no discount to apply."
  end
  end

  def items 
    @all_items
  end
    
   
  def void_last_transaction
    @total = @total - @last_transaction.last

  end

    
  end 