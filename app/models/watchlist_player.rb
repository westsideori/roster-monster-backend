class WatchlistPlayer < ApplicationRecord
    belongs_to :watchlist
    belongs_to :player

    validates :player_id, uniqueness: { scope: :watchlist_id, message: "No duplicate players on Watchlist" }
end
