class Watchlist < ApplicationRecord
    belongs_to :user
    has_many :watchlist_players, dependent: :destroy
    has_many :players, through: :watchlist_players
end
