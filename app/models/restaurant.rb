class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :foods, dependent: :destroy
  validates :name, :city, :user, presence: true
end
