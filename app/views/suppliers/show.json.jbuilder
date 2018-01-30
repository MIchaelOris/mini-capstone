json.id @supplier_id
json.name @supplier.name
json.email @supplier.email
json.phone_number @supplier.phone_number
json.product_names @supplier.products.map { |product| product.name}