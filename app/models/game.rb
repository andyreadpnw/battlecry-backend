class Game < ApplicationRecord
    has_many :units
    has_many :game_players
    has_many :players, through: :game_players

    # accepts_nested_attributes_for :players
end
