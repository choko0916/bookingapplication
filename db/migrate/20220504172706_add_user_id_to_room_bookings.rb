class AddUserIdToRoomBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :room_bookings, :user_id, :integer
  end
end
