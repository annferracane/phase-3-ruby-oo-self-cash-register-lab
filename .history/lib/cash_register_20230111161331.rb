require "pry"

class CashRegister

    attr_accessor :total, :discount

    def apply_discount

    end

    def void_last_transaction

    end

    def add_item(title, price)
        total += price
    end

    def initialize(total, discount = 20)
        @total = 0
        @discount = discount
    end
end
