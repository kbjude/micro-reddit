class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :comment, length: { minmum: 7, maximum: 40 }
end
