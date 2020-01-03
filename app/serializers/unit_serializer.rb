class UnitSerializer < ActiveModel::Serializer
  attributes :id, :name, :coords, :health, :nation, :game_id
  has_one :game
end
