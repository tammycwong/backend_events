class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :image, :user_id, :description, :time, :price, :category, :all_attending_users
end
