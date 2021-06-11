class User < ApplicationRecord
    has_secure_password
    # attr_accessor :password
    # validates :username, uniqueness: {case_sensitive: false}
    
    has_many :events
    has_many :rsvps
    has_many :goingevents, through: :rsvps, source: :event
end
