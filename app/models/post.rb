class Post < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :comments

  validates :title, length: { minimum: 6 }
end
