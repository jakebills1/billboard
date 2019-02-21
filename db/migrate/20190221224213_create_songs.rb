class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.float :length
      t.string :genre
      t.belongs_to :artist, foreign_key: true
      t.belongs_to :chart, foreign_key: true, optional: true

      t.timestamps
    end
  end
end
