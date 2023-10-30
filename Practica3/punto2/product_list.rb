require 'csv'
require_relative 'product'
class ProductList
    attr_accessor :products

    def initialize
        @products = []
    end

    def read_in_csv(csv_file)
        CSV.foreach(csv_file, headers:true) do |row|
            @products << Product.new(
                row['id'],
                row['name'],
                row['price'].to_f
            )
        end
    end
end