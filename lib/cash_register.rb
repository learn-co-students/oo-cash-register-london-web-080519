
class CashRegister
    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []

        def discount
            @discount
        end
    end

    attr_accessor :items, :discount, :total, :last_item

    def add_item(title, price, quantity = 1)
        quantity.times {self.items.push(title)}
        self.total += price * quantity
        self.last_item = price * quantity
    end

    def apply_discount
        if discount
            self.total *= (1 - (self.discount.to_f / 100.0))
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
            self.total -= self.last_item
    end
end