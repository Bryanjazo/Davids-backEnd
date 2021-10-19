require "test_helper"

class Api::V1::ScrapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_scraper = api_v1_scrapers(:one)
  end

  test "should get index" do
    get api_v1_scrapers_url, as: :json
    assert_response :success
  end

  test "should create api_v1_scraper" do
    assert_difference('Api::V1::Scraper.count') do
      post api_v1_scrapers_url, params: { api_v1_scraper: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_scraper" do
    get api_v1_scraper_url(@api_v1_scraper), as: :json
    assert_response :success
  end

  test "should update api_v1_scraper" do
    patch api_v1_scraper_url(@api_v1_scraper), params: { api_v1_scraper: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_scraper" do
    assert_difference('Api::V1::Scraper.count', -1) do
      delete api_v1_scraper_url(@api_v1_scraper), as: :json
    end

    assert_response 204
  end
end
