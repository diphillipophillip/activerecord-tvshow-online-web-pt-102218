class AddSeasonToShows < ActiveRecord::Migration[5.0]
  def change 
    add_column :shows, :season, :string
  end 
end 