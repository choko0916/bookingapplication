class ChangeDataRoomImageToRoomRegistration < ActiveRecord::Migration[6.1]
  def change
    change_column :room_registrations, :room_image, :string
  end
end
