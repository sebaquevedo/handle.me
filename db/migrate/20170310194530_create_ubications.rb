class CreateUbications < ActiveRecord::Migration[5.0]
  def change
    create_table :ubications do |t|
      t.string :name
      t.integer :capacity
      t.references :subsidiary, foreign_key: true

      t.timestamps
    end
  end
end
