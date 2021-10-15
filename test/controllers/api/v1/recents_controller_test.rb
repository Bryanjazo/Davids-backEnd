require "test_helper"

class Api::V1::RecentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_recent = api_v1_recents(:one)
  end

  test "should get index" do
    get api_v1_recents_url, as: :json
    assert_response :success
  end

  test "should create api_v1_recent" do
    assert_difference('Api::V1::Recent.count') do
      post api_v1_recents_url, params: { api_v1_recent: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_recent" do
    get api_v1_recent_url(@api_v1_recent), as: :json
    assert_response :success
  end

  test "should update api_v1_recent" do
    patch api_v1_recent_url(@api_v1_recent), params: { api_v1_recent: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_recent" do
    assert_difference('Api::V1::Recent.count', -1) do
      delete api_v1_recent_url(@api_v1_recent), as: :json
    end

    assert_response 204
  end
end
