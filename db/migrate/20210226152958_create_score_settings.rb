class CreateScoreSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :score_settings do |t|
      t.integer :roster_id
      t.float :points
      t.float :rebounds
      t.float :assists
      t.float :steals
      t.float :blocks
      t.float :threes_made
      t.float :turnovers
      t.integer :games_played
      t.float :field_goals_made
      t.float :field_goals_attempted
      t.float :threes_attempted
      t.float :free_throws_made
      t.float :free_throws_attempted

      t.timestamps
    end
  end
end
