class PostSerializer < ActiveModel::Serializer
  attributes :id, :description, :needed_skillset
  has_one :user
end
