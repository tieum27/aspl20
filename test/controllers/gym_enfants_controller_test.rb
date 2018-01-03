require 'test_helper'

class GymEnfantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gym_enfants_index_url
    assert_response :success
  end

end
