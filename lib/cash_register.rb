class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @cost = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @title = title
     
    quantity.times do
      @items << title
    end
    @cost << price
  end

  def apply_discount
   @total = (total * (1- discount.to_f/100)).to_i
   if discount > 0
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

 def items
  @items
 end 

  def void_last_transaction
    @total -= @cost.pop
    @total = 0.0 if @cost.size == 0
  end

end
