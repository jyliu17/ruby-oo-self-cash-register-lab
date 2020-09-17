require "pry"


class CashRegister

    attr_accessor :discount, :total, :items, :transactions

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @transactions = []
    end

    def add_item(item, price, quantity = 1)

        quantity.times do 
            @items << item
        end
        cost = price * quantity 
        @total += cost

        @transactions << cost 
    end

    def apply_discount

        if discount > 0

        @total -= @total * @discount/100

        "After the discount, the total comes to $#{@total}."
        else 
        "There is no discount to apply."
        end              
    end
    def void_last_transaction
       @total -= @transactions.last
       @transactions.pop()
    end
    
end
