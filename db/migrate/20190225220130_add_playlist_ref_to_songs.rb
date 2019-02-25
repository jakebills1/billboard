class AddPlaylistRefToSongs < ActiveRecord::Migration[5.2]
  def change
    add_reference :songs, :playlist, foreign_key: true
  end
end
