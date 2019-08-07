require "pry"
class CashRegister
    attr_accessor :total, :discount, :items

    def initialize(discount=0)
        @total = 0 
        @discount = discount
        @items = []
        @transactions = []

    end 

    def add_item( title, price, qty=1)
        self.total = self.total + price * qty
        qty.times do 
            @items << title
        end    
        @transactions << (price * qty)
    end


    def apply_discount 
        #check if there is a discount
        #if discount = 0, no discount to apply.  Tell them there's no discount
        if self.discount == 0 
            "There is no discount to apply."
        else 
            self.total = (self.total * (1 - (self.discount.to_f/100))).to_i
            "After the discount, the total comes to $#{self.total}."
        end
    end 

    def void_last_transaction 
        @total -= @transactions.pop

     
        #removes last transaction from total 
        #keep track of transactions, via array? 
    end


        
end
