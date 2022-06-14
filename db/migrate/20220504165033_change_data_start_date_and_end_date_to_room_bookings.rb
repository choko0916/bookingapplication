class ChangeDataStartDateAndEndDateToRoomBookings < ActiveRecord::Migration[6.1]
  def change
    change_column :room_bookings, :start_date, :date
    change_column :room_bookings, :end_date, :date
  end
end
