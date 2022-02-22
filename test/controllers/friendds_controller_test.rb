require "test_helper"

class FrienddsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friendd = friendds(:one)
  end

  test "should get index" do
    get friendds_url
    assert_response :success
  end

  test "should get new" do
    get new_friendd_url
    assert_response :success
  end

  test "should create friendd" do
    assert_difference("Friendd.count") do
      post friendds_url, params: { friendd: { email: @friendd.email, first_name: @friendd.first_name, last_name: @friendd.last_name, phone: @friendd.phone, twitter: @friendd.twitter } }
    end

    assert_redirected_to friendd_url(Friendd.last)
  end

  test "should show friendd" do
    get friendd_url(@friendd)
    assert_response :success
  end

  test "should get edit" do
    get edit_friendd_url(@friendd)
    assert_response :success
  end

  test "should update friendd" do
    patch friendd_url(@friendd), params: { friendd: { email: @friendd.email, first_name: @friendd.first_name, last_name: @friendd.last_name, phone: @friendd.phone, twitter: @friendd.twitter } }
    assert_redirected_to friendd_url(@friendd)
  end

  test "should destroy friendd" do
    assert_difference("Friendd.count", -1) do
      delete friendd_url(@friendd)
    end

    assert_redirected_to friendds_url
  end
end
