require 'test_helper'

class TrampolineControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trampoline_index_url
    assert_response :success
  end

end
