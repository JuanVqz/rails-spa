class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.integer :year, default: 2019
      t.integer :ranking, default: 1
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
