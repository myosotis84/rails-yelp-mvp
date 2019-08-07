class Restaurant < ApplicationRecord
  belongs_to :restaurant
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end
