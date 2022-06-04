require "test_helper"

class RoomBookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get room_bookings_index_url
    assert_response :success
  end
end
