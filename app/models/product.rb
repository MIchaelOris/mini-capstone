class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0 }
  validates :description, length: {in: 10..500 }

  def discounted?
    price < 20
  end
  
  def tax
    price * 0.09
  end 

  def total
    price + tax
  end 

  def as_json
    {
                  id: id,
                  name: name,
                  price: price,
                  image_url: image_url,
                  description: description,
                  is_discounted: discounted?,
                  tax: tax,
                  total: total
                  }
  end

end 


