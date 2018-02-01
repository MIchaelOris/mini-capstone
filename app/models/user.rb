class User < ApplicationRecord
  has_secure_passwork
  has_many :orders

  
  
end