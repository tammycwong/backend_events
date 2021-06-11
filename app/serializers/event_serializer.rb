class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :image, :user_id, :description, :time, :price, :category

  # belongs_to :user
  # has_many :rsvps
  # has_many :users, through: :rsvps
end
