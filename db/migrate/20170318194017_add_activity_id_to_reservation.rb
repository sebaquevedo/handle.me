 class AddActivityIdToReservation < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :activity, foreign_key: true
  end
end
