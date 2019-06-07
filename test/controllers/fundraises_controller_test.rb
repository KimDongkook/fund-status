require 'test_helper'

class FundraisesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fundraises_index_url
    assert_response :success
  end

end
