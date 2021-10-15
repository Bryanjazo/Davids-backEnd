require "test_helper"

class Api::V1::BlockchainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_blockchain = api_v1_blockchains(:one)
  end

  test "should get index" do
    get api_v1_blockchains_url, as: :json
    assert_response :success
  end

  test "should create api_v1_blockchain" do
    assert_difference('Api::V1::Blockchain.count') do
      post api_v1_blockchains_url, params: { api_v1_blockchain: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_blockchain" do
    get api_v1_blockchain_url(@api_v1_blockchain), as: :json
    assert_response :success
  end

  test "should update api_v1_blockchain" do
    patch api_v1_blockchain_url(@api_v1_blockchain), params: { api_v1_blockchain: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_blockchain" do
    assert_difference('Api::V1::Blockchain.count', -1) do
      delete api_v1_blockchain_url(@api_v1_blockchain), as: :json
    end

    assert_response 204
  end
end
