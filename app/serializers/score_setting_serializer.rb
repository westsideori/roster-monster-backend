class ScoreSettingSerializer < ActiveModel::Serializer
  attributes :id, :roster_id, :points, :rebounds, :assists, :steals, :blocks, :threes_made, :turnovers, :games_played, :field_goals_made, :field_goals_attempted, :threes_attempted, :free_throws_made, :free_throws_attempted
end
