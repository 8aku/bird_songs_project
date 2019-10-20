require 'test_helper'

class BirdsongsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get birdsongs_index_url
    assert_response :success
  end

  test "should get show" do
    get birdsongs_show_url
    assert_response :success
  end

end
