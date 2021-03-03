class RosterPlayer < ApplicationRecord
    belongs_to :roster
    belongs_to :player

    validates :player_id, uniqueness: { scope: :roster_id, message: "No duplicate players on roster"}
end
