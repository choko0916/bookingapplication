class CreateRoomRegistrations < ActiveRecord::Migration[6.1]
  def change
    create_table :room_registrations do |t|
      t.string :room_name
      t.string :room_introduction
      t.integer :room_price
      t.string :room_address
      t.binary :room_image
      t.timestamps
    end
  end
end
