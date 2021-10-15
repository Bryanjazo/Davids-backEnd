class Api::V1::LifestylesController < ApplicationController
  before_action :set_api_v1_lifestyle, only: [:show, :update, :destroy]

  # GET /api/v1/lifestyles
  def index
    @api_v1_lifestyles = Api::V1::Lifestyle.all

    render json: @api_v1_lifestyles
  end

  # GET /api/v1/lifestyles/1
  def show
    render json: @api_v1_lifestyle
  end

  # POST /api/v1/lifestyles
  def create
    @api_v1_lifestyle = Api::V1::Lifestyle.new(api_v1_lifestyle_params)

    if @api_v1_lifestyle.save
      render json: @api_v1_lifestyle, status: :created, location: @api_v1_lifestyle
    else
      render json: @api_v1_lifestyle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/lifestyles/1
  def update
    if @api_v1_lifestyle.update(api_v1_lifestyle_params)
      render json: @api_v1_lifestyle
    else
      render json: @api_v1_lifestyle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/lifestyles/1
  def destroy
    @api_v1_lifestyle.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_lifestyle
      @api_v1_lifestyle = Api::V1::Lifestyle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_lifestyle_params
      params.fetch(:api_v1_lifestyle, {})
    end
end
