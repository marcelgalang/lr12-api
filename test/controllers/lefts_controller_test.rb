require 'test_helper'

class LeftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @left = lefts(:one)
  end

  test "should get index" do
    get lefts_url, as: :json
    assert_response :success
  end

  test "should create left" do
    assert_difference('Left.count') do
      post lefts_url, params: { left: { user_id: @left.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show left" do
    get left_url(@left), as: :json
    assert_response :success
  end

  test "should update left" do
    patch left_url(@left), params: { left: { user_id: @left.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy left" do
    assert_difference('Left.count', -1) do
      delete left_url(@left), as: :json
    end

    assert_response 204
  end
end
