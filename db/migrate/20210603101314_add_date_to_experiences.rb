class AddDateToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :booking_date, :date
  end
end
