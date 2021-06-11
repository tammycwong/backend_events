class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :age, :location, :interests, :image

  has_many :events
  has_many :rsvps
  # has_many :goingevents
end
