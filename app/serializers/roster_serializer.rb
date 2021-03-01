class RosterSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :league, :season, :slogan, :score_setting, :players
end
