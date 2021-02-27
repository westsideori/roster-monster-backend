# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_26_152958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.string "college"
    t.string "position"
    t.string "position_category"
    t.string "team"
    t.string "image"
    t.integer "nba_id"
    t.integer "api_id"
    t.integer "yahoo_id"
    t.integer "rotowire_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roster_players", force: :cascade do |t|
    t.integer "roster_id"
    t.integer "player_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rosters", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "league"
    t.string "season"
    t.string "slogan"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "score_settings", force: :cascade do |t|
    t.integer "roster_id"
    t.float "points"
    t.float "rebounds"
    t.float "assists"
    t.float "steals"
    t.float "blocks"
    t.float "threes_made"
    t.float "turnovers"
    t.integer "games_played"
    t.float "field_goals_made"
    t.float "field_goals_attempted"
    t.float "threes_attempted"
    t.float "free_throws_made"
    t.float "free_throws_attempted"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "watchlist_players", force: :cascade do |t|
    t.integer "watchlist_id"
    t.integer "player_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "watchlists", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
