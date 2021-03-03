class RostersController < ApplicationController
    before_action :authenticate, only: [:show, :create, :update, :destroy]

    def index
        rosters = Roster.all
        render json: rosters
    end

    def show
        roster = Roster.find_by(id: params[:rostid], user_id: params[:id])
        render json: roster
    end

    def create
        roster = Roster.create(roster_params)
        if roster.valid?
            render json: roster
        else
            render json: { errors: roster.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        roster = Roster.find(params[:id])
        if roster.update(params.permit(:name, :league, :season, :slogan))
            render json: roster
        else
            render json: { errors: roster.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        roster = Roster.find(params[:id])
        roster.destroy
    end

    private
    
    def roster_params
        params.permit(:user_id, :name, :league, :season, :slogan)
    end

end
