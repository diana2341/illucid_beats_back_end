class User < ApplicationRecord
    has_many :mixes
    validates :username, uniqueness: true

end
