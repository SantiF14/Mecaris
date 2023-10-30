require_relative 'product_list'
require_relative 'purchase'

product_list = ProductList.new()

product_list.read_in_csv('productos.csv')

order = Purchase.new(product_list.products)

order.add_product('001')
order.add_product('003')
order.add_product('003')
order.add_product('005')

order.purchase_order.each do |product|
    puts "#{product.name} #{product.price}"
end

total = order.total
puts "total de la compra #{total}"

discount = [
    {type: :percentage, value: 15},
    {type: :amount, value: 50}
]

total  = order.custom_discounts(discount)

puts "total de la compra #{total}"