class Watchlist < ApplicationRecord
  belongs_to :user
  has_many :movies, through: :watch_movies
end
