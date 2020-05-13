class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"],
                                     message: 'must be "chinese", "italian", "japanese", "french" or "belgian"' }
end
