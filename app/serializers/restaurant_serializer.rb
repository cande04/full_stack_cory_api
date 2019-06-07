class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :editable
  has_one :user
  has_many :foods

  def editable
    scope == object.user
  end
end
