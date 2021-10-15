class Api::V1::RecentsController < ApplicationController
  before_action :set_api_v1_recent, only: [:show, :update, :destroy]

  # GET /api/v1/recents
  def index
    @api_v1_recents = Api::V1::Recent.all

    render json: @api_v1_recents
  end

  # GET /api/v1/recents/1
  def show
    render json: @api_v1_recent
  end

  # POST /api/v1/recents
  def create
    @api_v1_recent = Api::V1::Recent.new(api_v1_recent_params)

    if @api_v1_recent.save
      render json: @api_v1_recent, status: :created, location: @api_v1_recent
    else
      render json: @api_v1_recent.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/recents/1
  def update
    if @api_v1_recent.update(api_v1_recent_params)
      render json: @api_v1_recent
    else
      render json: @api_v1_recent.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/recents/1
  def destroy
    @api_v1_recent.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_recent
      @api_v1_recent = Api::V1::Recent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_recent_params
      params.fetch(:api_v1_recent, {})
    end
end
