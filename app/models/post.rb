class Post < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :comments
end
