require "test_helper"

class Api::V1::WritersFeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_writers_feed = api_v1_writers_feeds(:one)
  end

  test "should get index" do
    get api_v1_writers_feeds_url, as: :json
    assert_response :success
  end

  test "should create api_v1_writers_feed" do
    assert_difference('Api::V1::WritersFeed.count') do
      post api_v1_writers_feeds_url, params: { api_v1_writers_feed: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_writers_feed" do
    get api_v1_writers_feed_url(@api_v1_writers_feed), as: :json
    assert_response :success
  end

  test "should update api_v1_writers_feed" do
    patch api_v1_writers_feed_url(@api_v1_writers_feed), params: { api_v1_writers_feed: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_writers_feed" do
    assert_difference('Api::V1::WritersFeed.count', -1) do
      delete api_v1_writers_feed_url(@api_v1_writers_feed), as: :json
    end

    assert_response 204
  end
end
