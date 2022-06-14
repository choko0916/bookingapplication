class CreateRoomBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :room_bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :number_of_people
      t.integer :room_registration_id

      t.timestamps
    end
  end
end
