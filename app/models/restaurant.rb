class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :foods
  validates :name, :city, :user, presence: true
end
