class CashRegister

    attr_accessor :total, :discount 

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @previous = self.total
       self.total += (price * quantity)
       quantity.times do 
        @items.push(title)
       end
    end

    def apply_discount
        if @discount > 0
            self.total = self.total - (self.total * (discount.to_f / 100))
            return "After the discount, the total comes to $#{self.total.to_i}."
        else 
            return "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total = @previous
    end


end
