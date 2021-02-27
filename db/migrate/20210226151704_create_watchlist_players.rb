class CreateWatchlistPlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :watchlist_players do |t|
      t.integer :watchlist_id
      t.integer :player_id

      t.timestamps
    end
  end
end
