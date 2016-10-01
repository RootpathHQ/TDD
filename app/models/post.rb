class Post < ApplicationRecord
  # Validates Post if it has Title and Body
    validates :title, :body, presence: true
end
