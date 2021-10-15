class Api::V1::LearnCryptosController < ApplicationController
  before_action :set_api_v1_learn_crypto, only: [:show, :update, :destroy]

  # GET /api/v1/learn_cryptos
  def index
    @api_v1_learn_cryptos = Api::V1::LearnCrypto.all

    render json: @api_v1_learn_cryptos
  end

  # GET /api/v1/learn_cryptos/1
  def show
    render json: @api_v1_learn_crypto
  end

  # POST /api/v1/learn_cryptos
  def create
    @api_v1_learn_crypto = Api::V1::LearnCrypto.new(api_v1_learn_crypto_params)

    if @api_v1_learn_crypto.save
      render json: @api_v1_learn_crypto, status: :created, location: @api_v1_learn_crypto
    else
      render json: @api_v1_learn_crypto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/learn_cryptos/1
  def update
    if @api_v1_learn_crypto.update(api_v1_learn_crypto_params)
      render json: @api_v1_learn_crypto
    else
      render json: @api_v1_learn_crypto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/learn_cryptos/1
  def destroy
    @api_v1_learn_crypto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_learn_crypto
      @api_v1_learn_crypto = Api::V1::LearnCrypto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_learn_crypto_params
      params.fetch(:api_v1_learn_crypto, {})
    end
end
