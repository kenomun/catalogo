class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :synopsis
      t.string :director
      t.boolean :validated, default: true

      t.timestamps
    end
  end
end
