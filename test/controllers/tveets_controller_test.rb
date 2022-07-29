require "test_helper"

class TveetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tveet = tveets(:one)
  end

  test "should get index" do
    get tveets_url
    assert_response :success
  end

  test "should get new" do
    get new_tveet_url
    assert_response :success
  end

  test "should create tveet" do
    assert_difference('Tveet.count') do
      post tveets_url, params: { tveet: { body: @tveet.body, likes_count: @tveet.likes_count, retweets_count: @tveet.retweets_count } }
    end

    assert_redirected_to tveet_url(Tveet.last)
  end

  test "should show tveet" do
    get tveet_url(@tveet)
    assert_response :success
  end

  test "should get edit" do
    get edit_tveet_url(@tveet)
    assert_response :success
  end

  test "should update tveet" do
    patch tveet_url(@tveet), params: { tveet: { body: @tveet.body, likes_count: @tveet.likes_count, retweets_count: @tveet.retweets_count } }
    assert_redirected_to tveet_url(@tveet)
  end

  test "should destroy tveet" do
    assert_difference('Tveet.count', -1) do
      delete tveet_url(@tveet)
    end

    assert_redirected_to tveets_url
  end
end
