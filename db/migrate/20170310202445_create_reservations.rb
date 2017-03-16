class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.datetime :init_date
      t.datetime :end_date
      t.integer :cost
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
