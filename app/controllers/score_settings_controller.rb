class ScoreSettingsController < ApplicationController
    

    def index
        score_settings = ScoreSetting.all
        render json: score_settings
    end

    def create
        score_setting = ScoreSetting.create(score_setting_params)
        render json: score_setting
    end

    def delete
        score_setting = ScoreSetting.find[params[:id]]
        score_setting.destroy
    end

    private

    def score_setting_params
        params.permit(:roster_id, :points, :rebounds, :assists, :steals, :blocks, :threes_made, :turnovers, :games_played, :field_goals_made, :field_goals_attempted, :threes_attempted, :free_throws_attempted, :free_throws_made)
    end

    
end
