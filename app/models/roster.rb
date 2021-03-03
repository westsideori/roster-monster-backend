class Roster < ApplicationRecord
    belongs_to :user
    has_one :score_setting, dependent: :destroy
    has_many :roster_players, dependent: :destroy
    has_many :players, through: :roster_players

    validates :name, :league, :season, :slogan, presence: true
end
