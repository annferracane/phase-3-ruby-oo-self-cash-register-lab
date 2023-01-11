require "pry"

class CashRegister

    attr_accessor :total, :discount

    def apply_discount
        @total = @total - @total * (discount / 100.0)

    end

    def void_last_transaction

    end

    def add_item(title, price, quantity = 1)

        item = {
            title : title,
            price : price,
            quantity : quantity
        }

        self.items.push(item)

        self.total += (price * quantity)
    end

    def initialize(total, discount = 20)
        @total = 0
        @discount = discount
        @items = []
    end
end
