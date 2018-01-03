require 'test_helper'

class NatationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get natation_index_url
    assert_response :success
  end

end
