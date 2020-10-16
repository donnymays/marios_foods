class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :content, length: { in: 50..250 }
  validates :rating, numericality: { only_integer: true, less_than: 6 }
end