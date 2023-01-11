require "pry"

class CashRegister

    attr_accessor :total, :discount

    def total
        
    end

    def initialize(total, discount = 20)
        @total = 0
        @discount = discount
    end
end
