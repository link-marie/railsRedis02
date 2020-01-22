require 'test_helper'

class RedisControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get show_path
    assert_response :success
  end

  test "test01" do
    user = User.new
    expected = user.my_posts + 1
    user.my_posts.increment
    assert_equal user.my_posts.value, expected
  end
end
