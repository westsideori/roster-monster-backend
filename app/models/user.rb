class User < ApplicationRecord
    has_many :rosters
    has_one :watchlist

    has_secure_password

    validates :username, uniqueness: true
    validates :username, :name, presence: true
    

end
