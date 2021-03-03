class WatchlistPlayersController < ApplicationController
    before_action :authenticate, only: [:create, :destroy]

    def index
        watchlist_players = WatchlistPlayer.all
        render json: watchlist_players
    end

    def create
        watchlist_player = WatchlistPlayer.create(params.permit(:watchlist_id, :player_id))
        if watchlist_player.valid?
            render json: watchlist_player
        else
            render json: { errors: watchlist_player.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        watchlist_player = WatchlistPlayer.find(params[:id])
        watchlist_player.destroy
    end



end
