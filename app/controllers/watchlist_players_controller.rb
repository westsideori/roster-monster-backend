class WatchlistPlayersController < ApplicationController

    def index
        watchlist_players = WatchlistPlayer.all
        render json: watchlist_players
    end

    def create
        watchlist_player = WatchlistPlayer.create(params.permit(:watchlist_id, :player_id))
        render json: watchlist_player
    end


end
