class Movie < ApplicationRecord
  has_many :posts
  has_many :users, through: :posts

  def self.get_movies
  	character_data = RestClient.get("https://api.themoviedb.org/4/list/8920?page=1&api_key=b833433d5a1c7f615ffcaa2c6259eccf")
  	data = JSON.parse(character_data)
  	movie_list = data['results'].each do |movie|
  		mov = Movie.find_or_create_by(title: movie['title'], release_date: movie["release_date"], description: movie["overview"], poster_path: movie["poster_path"], backdrop_path: movie["backdrop_path"])
  	end
  end
end
