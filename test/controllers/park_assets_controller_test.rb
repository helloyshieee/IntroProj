require "test_helper"

class ParkAssetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get park_assets_index_url
    assert_response :success
  end

  test "should get show" do
    get park_assets_show_url
    assert_response :success
  end
end
