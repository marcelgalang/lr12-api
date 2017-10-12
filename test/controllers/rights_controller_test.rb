require 'test_helper'

class RightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @right = rights(:one)
  end

  test "should get index" do
    get rights_url, as: :json
    assert_response :success
  end

  test "should create right" do
    assert_difference('Right.count') do
      post rights_url, params: { right: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show right" do
    get right_url(@right), as: :json
    assert_response :success
  end

  test "should update right" do
    patch right_url(@right), params: { right: {  } }, as: :json
    assert_response 200
  end

  test "should destroy right" do
    assert_difference('Right.count', -1) do
      delete right_url(@right), as: :json
    end

    assert_response 204
  end
end
