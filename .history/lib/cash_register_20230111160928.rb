require "pry"

class CashRegister

    attr_accessor

    def initialize(total, discount = 20)
        @total = 0
        @discount = discount
    end
end
