class Movie < ApplicationRecord
  has_many :watch_movies
  has_many :watchlists, through: :watch_movies
  has_many :posts
  has_many :comments, through: :posts

end
