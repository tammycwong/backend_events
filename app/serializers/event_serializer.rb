class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :image, :user_id
end
