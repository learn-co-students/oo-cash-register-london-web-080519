require "pry"

class CashRegister
    attr_accessor :total, :discount, :items
    
    @last_transaction = 1

    def initialize(discount=nil) 
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, qty=1)
        @total = @total + price * qty #self? to review
        qty.times do
            @items << title
        end
        @last_transaction = price * qty
    end

    def apply_discount
        if self.discount != nil
         discounted = self.discount/100.to_f
         self.total = self.total - (self.total * discounted)
         "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
     end

    def void_last_transaction
        @total = @total - @last_transaction
    end
end