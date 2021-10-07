class Api::V1::CryptosController < ApplicationController
  before_action :set_api_v1_crypto, only: [:show, :update, :destroy]


  def getCryptos 
    url = "https://newsdata.io/api/1/news?apikey=#{ENV['API_KEY']}&country=us&q=crypto"
    
    secondUrl = "http://newsdata.io/api/1/news?apikey=#{ENV['API_KEY']}&country=us&q=crypto&page=2"
    response =  HTTParty.get(url)
    secondResponse = HTTParty.get(secondUrl)
    
    render json: {first:response, second:secondResponse}
    # render json: response
  end
  # GET /api/v1/cryptos
  def index
    @api_v1_cryptos = Api::V1::Crypto.all

    render json: @api_v1_cryptos
  end

  # GET /api/v1/cryptos/1
  def show
    render json: @api_v1_crypto
  end

  # POST /api/v1/cryptos
  def create
    @api_v1_crypto = Api::V1::Crypto.new(api_v1_crypto_params)

    if @api_v1_crypto.save
      render json: @api_v1_crypto, status: :created, location: @api_v1_crypto
    else
      render json: @api_v1_crypto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/cryptos/1
  def update
    if @api_v1_crypto.update(api_v1_crypto_params)
      render json: @api_v1_crypto
    else
      render json: @api_v1_crypto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/cryptos/1
  def destroy
    @api_v1_crypto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_crypto
      @api_v1_crypto = Api::V1::Crypto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_crypto_params
      params.fetch(:api_v1_crypto, {})
    end
end
