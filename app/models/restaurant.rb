class Restaurant < ApplicationRecord
  RESTO = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy  # @restaurant.reviews
  validates :name, :address, :category, :phone_number, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: RESTO }
end
