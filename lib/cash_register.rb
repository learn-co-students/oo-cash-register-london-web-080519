
class CashRegister

    attr_accessor :total, :discount, :title, :price, :last_transaction

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @basket = []
  @last_transaction = []
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  @total += price * quantity
  quantity.times do @basket << title
  @last_transaction << price * quantity
  end
end

def apply_discount
  if @discount == 0
    "There is no discount to apply."
  else
  after_discount = (1 - @discount/100.0) * @total
  @total = after_discount
  "After the discount, the total comes to $#{after_discount.floor}."
  end
end

def items
  @basket
end

def void_last_transaction
  @total = @total - @last_transaction[-1]
end

end
