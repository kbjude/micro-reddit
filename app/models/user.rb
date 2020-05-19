class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_secure_password
  
  validates :user_name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true, unless: -> { password.blank? }
end
