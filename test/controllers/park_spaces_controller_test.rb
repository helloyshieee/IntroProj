require "test_helper"

class ParkSpacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get park_spaces_index_url
    assert_response :success
  end

  test "should get show" do
    get park_spaces_show_url
    assert_response :success
  end
end
