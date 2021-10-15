class Api::V1::BlockchainsController < ApplicationController
  before_action :set_api_v1_blockchain, only: [:show, :update, :destroy]

  # GET /api/v1/blockchains
  def index
    @api_v1_blockchains = Api::V1::Blockchain.all

    render json: @api_v1_blockchains
  end

  # GET /api/v1/blockchains/1
  def show
    render json: @api_v1_blockchain
  end

  # POST /api/v1/blockchains
  def create
    @api_v1_blockchain = Api::V1::Blockchain.new(api_v1_blockchain_params)

    if @api_v1_blockchain.save
      render json: @api_v1_blockchain, status: :created, location: @api_v1_blockchain
    else
      render json: @api_v1_blockchain.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/blockchains/1
  def update
    if @api_v1_blockchain.update(api_v1_blockchain_params)
      render json: @api_v1_blockchain
    else
      render json: @api_v1_blockchain.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/blockchains/1
  def destroy
    @api_v1_blockchain.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_blockchain
      @api_v1_blockchain = Api::V1::Blockchain.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_blockchain_params
      params.fetch(:api_v1_blockchain, {})
    end
end
