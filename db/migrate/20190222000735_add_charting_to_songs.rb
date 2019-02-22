class AddChartingToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :charting, :boolean
  end
end
