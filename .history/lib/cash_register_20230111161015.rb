require "pry"

class CashRegister

    attr_accessor :total, :discount

    def initialize(total, discount = 20)
        @total = 0
        @discount = discount
    end
end
