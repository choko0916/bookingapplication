class AddRoomRegistrationIdToRoomBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :room_bookings, :room_registration_id, :integer
  end
end
