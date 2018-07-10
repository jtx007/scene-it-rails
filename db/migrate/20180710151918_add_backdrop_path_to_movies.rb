class AddBackdropPathToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :backdrop_path, :string
  end
end
