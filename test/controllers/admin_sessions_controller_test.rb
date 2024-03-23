require "test_helper"

class AdminSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get admin_sessions_create_url
    assert_response :success
  end
end
