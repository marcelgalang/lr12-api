require 'test_helper'

class OnesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @one = ones(:one)
  end

  test "should get index" do
    get ones_url, as: :json
    assert_response :success
  end

  test "should create one" do
    assert_difference('One.count') do
      post ones_url, params: { one: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show one" do
    get one_url(@one), as: :json
    assert_response :success
  end

  test "should update one" do
    patch one_url(@one), params: { one: {  } }, as: :json
    assert_response 200
  end

  test "should destroy one" do
    assert_difference('One.count', -1) do
      delete one_url(@one), as: :json
    end

    assert_response 204
  end
end
