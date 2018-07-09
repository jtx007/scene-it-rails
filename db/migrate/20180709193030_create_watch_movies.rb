class CreateWatchMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :watch_movies do |t|
      t.integer :movie_id
      t.integer :watchlist_id
      t.timestamps
    end
  end
end
