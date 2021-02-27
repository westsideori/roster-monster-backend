class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :number, :position, :team, :image, :nba_id, :api_id, :yahoo_id
end
