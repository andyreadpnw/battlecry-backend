class UnitsController < ApplicationController

    def index
        units = Unit.all
        render :json => units
    end
    def show
        render :json => Unit.find(params[:id])
    end

    def create
        unit = Unit.new(player_params)
        if unit.save
            render json: unit
        else
            render json: { error: 'unit exist, no save!' }
        end
    end 
    
    def destroy
        @unit = Unit.find(params[:id])
        @unit.destroy
    end

private

    def unit_params
        params.require(:unit).permit(:name, :coords, :health, :nation, :game_id)
    end

end
