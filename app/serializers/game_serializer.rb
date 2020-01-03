class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :turn, :phase, :players
end
