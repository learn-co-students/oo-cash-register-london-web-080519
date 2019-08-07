require 'pry'

class CashRegister

    attr_accessor :total, :items, :last_transation

    attr_reader :discount

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item_name, price, quantity = 1)
        self.last_transation = price * quantity
        self.total += price * quantity
        self.items.fill(item_name, self.items.size, quantity)
        self.total
    end

    def apply_discount
        if discount > 0#discout at init
            @total = @total - @total * discount/100
            "After the discount, the total comes to $#{@total}."
        else #no discount
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transation
    end

end

my_register = CashRegister.new(20)

my_register.add_item("beets", 2.50, 2)
my_register.add_item("apples", 0.40, 4)
0