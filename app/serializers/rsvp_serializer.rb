class RsvpSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :event_id, :status

  # belongs_to :user
  belongs_to :event 
end
