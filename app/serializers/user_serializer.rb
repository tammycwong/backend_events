class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :age, :location, :bio, :password_digest
end
