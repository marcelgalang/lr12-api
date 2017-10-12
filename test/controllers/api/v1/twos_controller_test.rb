require 'test_helper'

class Api::V1::TwosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_two = api_v1_twos(:one)
  end

  test "should get index" do
    get api_v1_twos_url, as: :json
    assert_response :success
  end

  test "should create api_v1_two" do
    assert_difference('Api::V1::Two.count') do
      post api_v1_twos_url, params: { api_v1_two: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_two" do
    get api_v1_two_url(@api_v1_two), as: :json
    assert_response :success
  end

  test "should update api_v1_two" do
    patch api_v1_two_url(@api_v1_two), params: { api_v1_two: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_two" do
    assert_difference('Api::V1::Two.count', -1) do
      delete api_v1_two_url(@api_v1_two), as: :json
    end

    assert_response 204
  end
end
