class CreateSubsidiaries < ActiveRecord::Migration[5.0]
  def change
    create_table :subsidiaries do |t|
      t.string :name
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
