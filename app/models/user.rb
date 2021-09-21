class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true
    
    has_many :events
    has_many :rsvps
    has_many :goingevents, through: :rsvps, source: :event
end
