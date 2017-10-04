require 'test_helper'

class LikesControllerTest < ActionController::TestCase
  test "should get post_likes" do
    get :post_likes
    assert_response :success
  end

end
