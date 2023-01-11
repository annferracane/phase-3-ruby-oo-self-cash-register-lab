require "pry"

class CashRegister

    attr_accessor :total, :discount

    def apply_discount

    end

    def void_last_transaction

    end

    def add_item(title, price, quantity = 1)
        item = {
            title : title,
            
        }

        items.push(title)
        total += (price * quantity)
    end

    def initialize(total, discount = 20)
        @total = 0
        @discount = discount
        @items = []
    end
end
