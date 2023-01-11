require "pry"

class CashRegister

    attr_accessor :total, :discount

    def apply_discount
        if(@discount > 0) 
            @total = @total * ((100 - discount) / 100.0)
            "After the discount, the total comes to $#{@total}"
        else
            "There is no discount to apply."
    end

    def void_last_transaction

    end

    def add_item(title, price, quantity = 1)
        counter = 0
        
        until counter == quantity do
            self.items.push(title)
            counter =+ 1
        end

        self.total += (price * quantity)
    end

    def initialize(total, discount)
        @total = 0
        @discount = 0
        @items = []
    end
end
