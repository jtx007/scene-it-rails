class User < ApplicationRecord
  has_many :posts
  has_many :movies, through: :posts
  has_many :comments
  belongs_to :watchlist
end
