class Event < ApplicationRecord
    belongs_to :user
    has_many :rsvps
    has_many :users, through: :rsvps

    def all_attending_users 
        self.rsvps.map do |rsvp|
            rsvp.user
        end
    end
end
