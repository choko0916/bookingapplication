class RoomBooking < ApplicationRecord
  belongs_to :user
  belongs_to :room_registration
end
