class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :notes
  has_one :restaurant

  # def editable
  #   scope == object.user
  # end
end
