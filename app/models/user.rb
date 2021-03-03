class User < ApplicationRecord
    has_many :rosters, dependent: :destroy
    has_one :watchlist, dependent: :destroy

    has_secure_password

    validates :username, uniqueness: true
    validates :username, :name, presence: true
    

end
