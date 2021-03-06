require "test_helper"

class Api::V1::MeetTeansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_meet_tean = api_v1_meet_teans(:one)
  end

  test "should get index" do
    get api_v1_meet_teans_url, as: :json
    assert_response :success
  end

  test "should create api_v1_meet_tean" do
    assert_difference('Api::V1::MeetTean.count') do
      post api_v1_meet_teans_url, params: { api_v1_meet_tean: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_meet_tean" do
    get api_v1_meet_tean_url(@api_v1_meet_tean), as: :json
    assert_response :success
  end

  test "should update api_v1_meet_tean" do
    patch api_v1_meet_tean_url(@api_v1_meet_tean), params: { api_v1_meet_tean: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_meet_tean" do
    assert_difference('Api::V1::MeetTean.count', -1) do
      delete api_v1_meet_tean_url(@api_v1_meet_tean), as: :json
    end

    assert_response 204
  end
end
