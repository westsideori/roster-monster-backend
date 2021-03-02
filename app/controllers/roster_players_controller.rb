class RosterPlayersController < ApplicationController
    

    def index
        roster_players = RosterPlayer.all
        render json: roster_players
    end

    def create
        roster_player = RosterPlayer.create(params.permit(:roster_id, :player_id))
        
        render json: roster_player
    end

    def destroy
        roster_player = RosterPlayer.find(params[:id])
        roster_player.destroy
    end

    
end
