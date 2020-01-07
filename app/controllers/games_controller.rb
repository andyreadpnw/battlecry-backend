class GamesController < ApplicationController

    def index
        games = Game.all
        render :json => games
    end
    def show
        render :json => Game.find(params[:id])
    end

    def create
        game = Game.new(game_params)
        if game.save
            render json: game
        else
            render json: { error: 'game exist, no save!' }
        end
    end 

    def update
        game = Game.find(params[:id])

        puts game_params
        game.update(game_params)
        # byebug
        render :json => game
    end

    def destroy
        @game = Game.find(params[:id])
        @game.destroy
    end

private

    def game_params
        params.require(:game).permit(:name, :turn, :phase)
    end

end
