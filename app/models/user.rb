# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :restaurants
  has_many :foods, through: :restaurants
end
