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
        self.total =- self.last_transaction["price"]
        items.size == 0 ? 0.0 : items.slice(0, items.size - self.last_transaction["quantity"])
    end

    def add_item(title, price, quantity = 1)
        counter = 0
        total_price = 0

        until counter == quantity do
            self.items.push(title)
            total_price =+ price
            counter =+ 1
        end

        self.last_transaction = {
            quantity: quantity,
            price: total_price
        }

        # my_hash = { key1: "value1", key2: "value2" }

        self.total += (price * quantity)
    end

    def initialize(total, discount)
        @total = 0
        @discount = 0
        @last_transaction = {}
        @items = []
    end
end
