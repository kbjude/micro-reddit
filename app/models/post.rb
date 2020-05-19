class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { minimum: 2, maximum: 15}
  validates :body, presence: true, length: { minimum: 10, maximum: 50}
end
