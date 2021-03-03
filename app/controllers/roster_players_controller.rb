class RosterPlayersController < ApplicationController
    before_action :authenticate, only: [:create, :destroy]

    def index
        roster_players = RosterPlayer.all
        render json: roster_players
    end

    def create
        roster_player = RosterPlayer.create(params.permit(:roster_id, :player_id))
        if roster_player.valid?
            render json: roster_player
        else
            render json: { errors: roster_player.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        roster_player = RosterPlayer.find(params[:id])
        roster_player.destroy
    end

    
end
