class Post < ApplicationRecord
  belongs_to :user, polymorphic: true
end
