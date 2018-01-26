json.id @product.id
json.name @product.id
json.price @product.price
json.formatted_price number_to_currency(@product.price)
json.image_url @product.image_url
json.description @product.discounted?
json.tax
json.price @product.price
json.formatted_price number_to_currency(@product.price)