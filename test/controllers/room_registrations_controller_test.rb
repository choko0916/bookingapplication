require "test_helper"

class RoomRegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get room_registrations_index_url
    assert_response :success
  end
end
