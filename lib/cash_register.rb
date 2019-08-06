

class CashRegister 
    attr_accessor :total, :discount, :items, :transactions
def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
  @transactions = []
end

def add_item(title, price, quantity=1)
    quantity.times do items << title 
    end 
    transactions << price * quantity 
    self.total += price * quantity
    @total 
  end

  def apply_discount
        if @discount > 0
      @discount = @discount/100.to_f
      self.total-= (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
else "There is no discount to apply."
  end
end 

def void_last_transaction
    self.total -= transactions.pop
  end
  
end 