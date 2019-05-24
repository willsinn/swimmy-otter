class UserSerializer < ActiveModel::Serializer
  has_many :scores
  attributes :id, :name
end
