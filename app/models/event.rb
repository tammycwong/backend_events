class Event < ApplicationRecord
    belongs_to :user
    has_many :rsvps
    has_many :users, through: :rsvps

    # def all_attending_users 
    #     self.rsvps.map do |rsvp|
    #         rsvp.user
    #     end
    # end

    def all_attending_users
        self.users.map do |user|
            user.name
        end
    end

    # def hosted_by
    # end
end
