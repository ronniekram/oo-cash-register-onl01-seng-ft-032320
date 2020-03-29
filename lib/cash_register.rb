class CashRegister
  attr_accessor :discount, :total, :item, :price, :quantity

  def initialize(discount = 0)
    @item = []
    @discount = discount
    @total = 0 
  end
  
  def total
    @total
  end 
  
  def add_item(title, price, quantity = 1)
    @total += price*quantity
    quantity.times do 
      @item << title
    end
      @last_item = price*quantity
  end 
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      discount_value = @total * @discount / 100
      @total -= discount_value
      "After the discount, the total comes to $#{@total}."
    end
  end  
  
  def items
    cart = []
    @item.collect do |i|
      cart << i
    end
      cart
  end  
  
  def void_last_transaction
    @item.delete_at(-1)
    self.total = self.total - @last_item
  end 
  
end 
