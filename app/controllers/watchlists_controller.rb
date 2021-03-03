class WatchlistsController < ApplicationController
    before_action :authenticate, only: [:show, :destroy]

    def index
        watchlists = Watchlist.all
        render json: watchlists
    end

    def show
        watchlist = Watchlist.find_by(user_id: params[:id])
        render json: watchlist
    end

    def create
        watchlist = Watchlist.create(params.permit(:user_id))
        render json: watchlist
    end

    def destroy
        watchlist = Watchlist.find(params[:id])
        watchlist.destroy
    end


end
