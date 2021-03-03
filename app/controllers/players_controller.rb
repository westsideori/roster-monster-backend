class PlayersController < ApplicationController
    

    def player_season_data
        db_players = Player.all.to_json
        response = RestClient.get "https://api.sportsdata.io/v3/nba/stats/json/PlayerSeasonStats/#{Time.now.strftime("%Y")}?key=#{ENV["FANTASY_API_KEY"]}"
        api_players = JSON.parse(response.body)
        db_players_parsed = JSON.parse(db_players)
        players = []
        api_players.each do |api_player|
            db_players_parsed.each do |db_player|
                if api_player["PlayerID"] == db_player["api_id"]
                    players.push(api_player.merge(db_player))
                end
            end
        end

        
        render json: players, only: ["id", "api_id", "name", "team", "number", "college", "position_category", "position", "image", "nba_id", "yahoo_id", "rotowire_id", "Games", "FieldGoalsMade", "FieldGoalsAttempted", "ThreePointersMade", "ThreePointersAttempted", "FreeThrowsMade", "FreeThrowsAttempted", "Points", "Rebounds", "Assists", "Steals", "BlockedShots", "Turnovers", "PersonalFouls"]
    end

    def player_daily_predictions
        db_players = Player.all.to_json
        response = RestClient.get "https://api.sportsdata.io/v3/nba/projections/json/PlayerGameProjectionStatsByDate/#{Time.now.strftime("%Y-%b-%d")}?key=#{ENV["FANTASY_API_KEY"]}"
        api_players = JSON.parse(response.body)
        db_players_parsed = JSON.parse(db_players)
        players = []
        api_players.each do |api_player|
            db_players_parsed.each do |db_player|
                if api_player["PlayerID"] == db_player["api_id"]
                    players.push(api_player.merge(db_player))
                end
            end
        end

        render json: players, only: ["id", "api_id", "name", "team", "number", "college", "position_category", "position", "image", "nba_id", "yahoo_id", "rotowire_id", "Games", "FieldGoalsMade", "FieldGoalsAttempted", "ThreePointersMade", "ThreePointersAttempted", "FreeThrowsMade", "FreeThrowsAttempted", "Points", "Rebounds", "Assists", "Steals", "BlockedShots", "Turnovers", "PersonalFouls"]
    end

    def create
        player = Player.create(player_params)
        render json: player
    end

    def show
    end

    private

    def player_params
        params.permit(:name, :number, :team, :position, :position_category, :college, :rotowire_id, :image, :nba_id, :api_id, :yahoo_id)
    end

end
