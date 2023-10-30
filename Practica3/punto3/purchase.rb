class Purchase
    require_relative 'product_list'
    attr_accessor :list, :purchase_order

    def initialize(list)
        @list = list
        @purchase_order = [] 
    end

    def add_product(code)
        product = @list.find { |p| p.id == code.to_s}
        if product
            @purchase_order << product
        end
    end

    def total 
        total = @purchase_order.sum{ |n| n.price}
        apply_discounts(total)
    end

    def apply_discounts(total)
        product_to_count = @purchase_order.count {|p| p.name == "'Historias de chillar'" }
        
        p product_to_count
        if total > 200 
            total = total * 0.9
        end
        if product_to_count >= 2 
            total = total - product_to_count*10
        end
        total
    end
    
    def custom_discounts(discounts)
        total = @purchase_order.sum{ |n| n.price}

        discounts.each do |discount|
            if discount[:type] == :percentage
                total = total * (1 - discount[:value] / 100.00)
            elsif discount[:type] == :amount
                total = total - discount[:value]
            end
        end
        total
    end
end