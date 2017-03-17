class AddColumnToReservation < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :ubication, foreign_key: true
  end
end
