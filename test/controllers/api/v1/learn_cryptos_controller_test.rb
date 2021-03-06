require "test_helper"

class Api::V1::LearnCryptosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_learn_crypto = api_v1_learn_cryptos(:one)
  end

  test "should get index" do
    get api_v1_learn_cryptos_url, as: :json
    assert_response :success
  end

  test "should create api_v1_learn_crypto" do
    assert_difference('Api::V1::LearnCrypto.count') do
      post api_v1_learn_cryptos_url, params: { api_v1_learn_crypto: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_learn_crypto" do
    get api_v1_learn_crypto_url(@api_v1_learn_crypto), as: :json
    assert_response :success
  end

  test "should update api_v1_learn_crypto" do
    patch api_v1_learn_crypto_url(@api_v1_learn_crypto), params: { api_v1_learn_crypto: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_learn_crypto" do
    assert_difference('Api::V1::LearnCrypto.count', -1) do
      delete api_v1_learn_crypto_url(@api_v1_learn_crypto), as: :json
    end

    assert_response 204
  end
end
