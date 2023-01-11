require "pry"

class CashRegister

    attr_accessor :total, :discount, :last_transaction, :items

    def initialize(discount = 0)
        @discount = discount
        @total = 0.0
        @last_transaction = {}
        @items = []
    end

    def apply_discount
        if(@discount > 0) 
            @total = @total * ((100.to_f - discount.to_f) / 100.to_f) # ask about this
            # binding.pry
            "After the discount, the total comes to $#{@total.to_i}." # ask about this
        else
            "There is no discount to apply."
        end

    end

    def void_last_transaction
       #  binding.pry
        if (self.last_transaction["price"])
            self.total -= self.last_transaction["price"]
            items.size == 0 ? 0.0 : items.slice(0, items.size - self.last_transaction["quantity"])
        end 
    end

    def add_item(title, price, quantity = 1)
        counter = 0
        total_price = 0

        until counter == quantity do
            self.items.push(title)
            total_price += price
            counter += 1
            # binding.pry
        end

        self.last_transaction = {
            quantity: quantity,
            price: total_price
        }

        self.total += (price * quantity)
    end
end

test = CashRegister.new()
