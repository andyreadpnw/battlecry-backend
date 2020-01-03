class GamePlayersController < ApplicationController

    def index
        game_players = GamePlayer.all
        render :json => game_players
    end

    def create
        puts "game player create"
        game_player = GamePlayers.new(game_player_params)
        if user_search.save
            puts "game player create save"
            name = Player.find_by(name: params[:name])
            game_player_holder = GamePlayers.new(player_id: name.id, game_id: game_player.id)
            game_player_holder.save

        end
    end 

    private

    def game_player_params
        params.require(:game_player).permit(:player_id, :game_id)
    end
    
end
