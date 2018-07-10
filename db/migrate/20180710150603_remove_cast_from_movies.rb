class RemoveCastFromMovies < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :cast, :text
  end
end
