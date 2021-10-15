require "test_helper"

class Api::V1::HeadlinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_headline = api_v1_headlines(:one)
  end

  test "should get index" do
    get api_v1_headlines_url, as: :json
    assert_response :success
  end

  test "should create api_v1_headline" do
    assert_difference('Api::V1::Headline.count') do
      post api_v1_headlines_url, params: { api_v1_headline: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_headline" do
    get api_v1_headline_url(@api_v1_headline), as: :json
    assert_response :success
  end

  test "should update api_v1_headline" do
    patch api_v1_headline_url(@api_v1_headline), params: { api_v1_headline: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_headline" do
    assert_difference('Api::V1::Headline.count', -1) do
      delete api_v1_headline_url(@api_v1_headline), as: :json
    end

    assert_response 204
  end
end
