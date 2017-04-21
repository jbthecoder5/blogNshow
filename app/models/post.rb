class Post < ApplicationRecord
  belongs_to :user, class: 'User'
end
