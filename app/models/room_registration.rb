class RoomRegistration < ApplicationRecord
  mount_uploader :room_image, RoomImageUploader
  has_many :room_bookings
  belongs_to :user
end
