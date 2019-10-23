require 'test_helper'

class LicensesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get licenses_index_url
    assert_response :success
  end

end
