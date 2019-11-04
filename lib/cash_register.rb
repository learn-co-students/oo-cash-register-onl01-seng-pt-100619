class CashRegister
  attr_accessor :total, :discount, :total, :last_transaction
  
  def initialize(discount = 0)
    @total = total
    @discount = discount
    @items = []
  end 
  def add_item(title, amount, quantity = 1)
    self.total += amount * quantity 
    quantity.times do 
      items << title 
    end 
    self.last_transaction = amount * quantity 
  end 
  
  def apply_discount
    if @discount > 0 
      @discount = @disccount/100.to_f 
      
  
end
