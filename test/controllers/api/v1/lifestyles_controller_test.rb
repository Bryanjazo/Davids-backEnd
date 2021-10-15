require "test_helper"

class Api::V1::LifestylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_lifestyle = api_v1_lifestyles(:one)
  end

  test "should get index" do
    get api_v1_lifestyles_url, as: :json
    assert_response :success
  end

  test "should create api_v1_lifestyle" do
    assert_difference('Api::V1::Lifestyle.count') do
      post api_v1_lifestyles_url, params: { api_v1_lifestyle: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_lifestyle" do
    get api_v1_lifestyle_url(@api_v1_lifestyle), as: :json
    assert_response :success
  end

  test "should update api_v1_lifestyle" do
    patch api_v1_lifestyle_url(@api_v1_lifestyle), params: { api_v1_lifestyle: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_lifestyle" do
    assert_difference('Api::V1::Lifestyle.count', -1) do
      delete api_v1_lifestyle_url(@api_v1_lifestyle), as: :json
    end

    assert_response 204
  end
end
