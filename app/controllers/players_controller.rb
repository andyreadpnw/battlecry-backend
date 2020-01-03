class PlayersController < ApplicationController
    def index
        players = Player.all
        render :json => players
    end

    def show
        render :json => Player.find(params[:id])
    end

    def create
        player = Player.new(player_params)
        if player.save
            render json: player
        else
            render json: { error: 'player exist, no save!' }
        end
    end 
    
    def destroy
        @player = Player.find(params[:id])
        @player.destroy
    end

private

    def player_params
        params.require(:player).permit(:name)
    end

end
