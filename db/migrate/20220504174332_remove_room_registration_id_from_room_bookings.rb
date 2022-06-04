class RemoveRoomRegistrationIdFromRoomBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :room_bookings, :room_registration_id, :integer
  end
end
