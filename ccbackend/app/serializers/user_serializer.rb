class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :skillset, :img, :school, :name
end
