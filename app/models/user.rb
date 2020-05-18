class User < ApplicationRecord
    has_secure_password
    validates :user_name, presence: true, length: { minimum: 2, maximum: 50 }
    validates :email, presence: true, uniqueness: true
    validates :password, length: { minimum: 8, maximum: 70 }
    validates :password_confirmation, length: { minimum: 8, maximum: 70 }
end
