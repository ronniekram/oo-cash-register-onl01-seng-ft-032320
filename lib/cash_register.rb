class CashRegister
  attr_accessor :total, :discount, :item, :cart 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount.to_f
    @item = item
    @cart = []
  end 
  
  def total
    @total
  end 
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @cart << item
    end 
     @last_item = price*quantity 
  end 
  
  def apply_discount
    if @discount >= 1
      @total -= @total * (@discount/100)
      "After the discount, the total comes to $#{@total.to_i}."
    else  
      "There is no discount to apply."
    end
  end 
  
  def items
    self.cart
  end 
  
  def void_last_transaction
    @cart.delete_at(-1)
    @total = @total - @last_item
  end
  
end 