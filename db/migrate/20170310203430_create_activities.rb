class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.boolean :enabled
      t.integer :capacity

      t.timestamps
    end
  end
end
