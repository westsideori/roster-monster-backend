class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :number
      t.string :college
      t.string :position
      t.string :position_category
      t.string :team
      t.string :image
      t.integer :nba_id
      t.integer :api_id
      t.integer :yahoo_id
      t.integer :rotowire_id
      
      


      t.timestamps
    end
  end
end
