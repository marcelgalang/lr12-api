require 'test_helper'

class TwosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @two = twos(:one)
  end

  test "should get index" do
    get twos_url, as: :json
    assert_response :success
  end

  test "should create two" do
    assert_difference('Two.count') do
      post twos_url, params: { two: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show two" do
    get two_url(@two), as: :json
    assert_response :success
  end

  test "should update two" do
    patch two_url(@two), params: { two: {  } }, as: :json
    assert_response 200
  end

  test "should destroy two" do
    assert_difference('Two.count', -1) do
      delete two_url(@two), as: :json
    end

    assert_response 204
  end
end
