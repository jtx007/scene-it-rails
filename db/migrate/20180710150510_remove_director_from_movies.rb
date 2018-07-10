class RemoveDirectorFromMovies < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :director, :string
  end
end
