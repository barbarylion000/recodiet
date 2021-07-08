require 'test_helper'

class KcalsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get kcals_new_url
    assert_response :success
  end

end
