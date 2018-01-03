require 'test_helper'

class BbNageursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bb_nageurs_index_url
    assert_response :success
  end

end
