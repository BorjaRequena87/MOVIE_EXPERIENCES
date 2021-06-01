class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.text :booking_details

      t.timestamps
    end
  end
end
