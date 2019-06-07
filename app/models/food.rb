class Food < ApplicationRecord
  belongs_to :restaurant
  validates :name, :notes, :restaurant, presence: true
end
