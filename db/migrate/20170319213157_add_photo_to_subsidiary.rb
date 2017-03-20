class AddPhotoToSubsidiary < ActiveRecord::Migration[5.0]
  def change
    add_column :subsidiaries, :photo, :string
  end
end
