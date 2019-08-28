require 'test_helper'

class BadgesControllerTest < ActionDispatch::IntegrationTest
  test "should get completed" do
    get badges_completed_url
    assert_response :success
  end

end
