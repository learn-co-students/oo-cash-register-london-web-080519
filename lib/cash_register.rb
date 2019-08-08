
require "pry"
class CashRegister
     
    # init : 
    #  @total = 0
    # @discount = 0
    # items
    attr_accessor :total, :discount, :items
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @cost = []
        
    end

    # total
        # self.total
    

    # add_item(title, price, quantity=1)
    #     total += price * quantity
    def add_item(title, price, quantity=1)
        @total += price * quantity
        @title = title

        quantity.times do 
            @items << title
        end
        @cost << price


    end

    #apply_discount(title, discount)
        #  total -= discount
        # return "After the discount, the total comes to $#{total}." if employee
        # return "There is no discount to apply." if not employee
        def apply_discount
            
            @total = (total * (1- discount.to_f/100)).to_i
            
            if discount > 0
                return "After the discount, the total comes to $#{total}." 
            else
                return "There is no discount to apply."
            end
        end
    

    #items
        # self.items
        def items
            @items
        end

    # void_last_transaction
        # @items.pop()
        # self.total =0 
        def void_last_transaction
            
            @total -= @cost.pop
            @total = 0.0 if @cost.size == 0
        end


end