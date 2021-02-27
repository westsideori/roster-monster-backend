class WatchlistPlayer < ApplicationRecord
    belongs_to :watchlist
    belongs_to :player
end
