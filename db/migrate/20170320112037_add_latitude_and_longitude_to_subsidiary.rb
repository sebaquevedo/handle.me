class AddLatitudeAndLongitudeToSubsidiary < ActiveRecord::Migration[5.0]
  def change
    add_column :subsidiaries, :latitude, :float
    add_column :subsidiaries, :longitude, :float
  end
end
