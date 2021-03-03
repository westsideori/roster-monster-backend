class WatchlistSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :watchlist_players, :players
end
