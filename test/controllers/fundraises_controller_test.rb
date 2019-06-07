require 'test_helper'

class FundraiseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fundraise_index_url
    assert_response :success
  end

end
