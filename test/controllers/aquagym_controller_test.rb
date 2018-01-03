require 'test_helper'

class AquagymControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aquagym_index_url
    assert_response :success
  end

end
