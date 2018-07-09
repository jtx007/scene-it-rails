class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :release_date
      t.string :director
      t.text :cast
      t.text :description

      t.timestamps
    end
  end
end
