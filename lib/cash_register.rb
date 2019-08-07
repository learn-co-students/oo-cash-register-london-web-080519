class CashRegister

    attr_writer :total, :discount, :add_item, :apply_discount, :items, :void_last_transaction, :transaction_count, :amout
    attr_reader :discount, :total, :items

    def initialize(discount = 0, total = 0)
        @total = total
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times {@items << title}
        @amount = price * quantity
    end

    def apply_discount
        self.total *= 1-(self.discount.to_f/100)
        if self.discount != 0
        "After the discount, the total comes to $#{@total.round}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction    
        @total -= @amount
    end

end
