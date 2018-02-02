class User < ApplicationRecord
  has_secure_passwork
  has_many :orders

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  
end