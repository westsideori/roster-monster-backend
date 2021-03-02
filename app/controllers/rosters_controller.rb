class RostersController < ApplicationController
    

    def index
        rosters = Roster.all
        render json: rosters
    end

    def show
        roster = Roster.find(params[:id])
        render json: roster
    end

    def create
        roster = Roster.create(roster_params)
        render json: roster
    end

    def update
        roster = Roster.find(params[:id])
        roster.update(params.permit(:name, :league, :season, :slogan))
        render json: roster
    end

    def delete
        roster = Roster.find(params[:id])
        roster.destroy
    end

    private
    
    def roster_params
        params.permit(:user_id, :name, :league, :season, :slogan)
    end

end
