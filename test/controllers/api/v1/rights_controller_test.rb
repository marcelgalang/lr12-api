require 'test_helper'

class Api::V1::RightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_right = api_v1_rights(:one)
  end

  test "should get index" do
    get api_v1_rights_url, as: :json
    assert_response :success
  end

  test "should create api_v1_right" do
    assert_difference('Api::V1::Right.count') do
      post api_v1_rights_url, params: { api_v1_right: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_right" do
    get api_v1_right_url(@api_v1_right), as: :json
    assert_response :success
  end

  test "should update api_v1_right" do
    patch api_v1_right_url(@api_v1_right), params: { api_v1_right: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_right" do
    assert_difference('Api::V1::Right.count', -1) do
      delete api_v1_right_url(@api_v1_right), as: :json
    end

    assert_response 204
  end
end
