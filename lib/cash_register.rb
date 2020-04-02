class CashRegister
  attr_accessor :total, :discount, :item, :cart 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount.to_f
    @cart = []
  end 
  
  def total
    @total
  end 
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @cart << item
  end 
  
  def apply_discount
    if @discount >= 1
      @total -= @total * (@discount/100)
      puts "After the discount, the total comes to $#{@total}."
    else  
      "There is no discount to apply."
    end
  end 
  
  def items
    self.cart
  end 
  
  def void_last_transaction
    if @cart = []
      @total = 0
    else
      @total -= self.add_item
    end 
  end
  
end 