class CreateRosters < ActiveRecord::Migration[6.1]
  def change
    create_table :rosters do |t|
      t.integer :user_id
      t.string :name
      t.string :league
      t.string :season
      t.string :slogan

      t.timestamps
    end
  end
end
