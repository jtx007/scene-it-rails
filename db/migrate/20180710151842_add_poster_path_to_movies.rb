class AddPosterPathToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :poster_path, :string
  end
end
