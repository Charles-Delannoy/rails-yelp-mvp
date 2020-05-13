class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant_id, :content, :rating, presence: true
  validates :rating, acceptance: { accept: (0..5) }, numericality: { only_integer: true }
end
