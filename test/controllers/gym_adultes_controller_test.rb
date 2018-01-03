require 'test_helper'

class GymAdultesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gym_adultes_index_url
    assert_response :success
  end

end
