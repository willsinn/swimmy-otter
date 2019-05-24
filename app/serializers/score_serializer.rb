class ScoreSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user_id, :value
end
