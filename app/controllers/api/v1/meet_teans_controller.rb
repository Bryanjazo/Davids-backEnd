class Api::V1::MeetTeansController < ApplicationController
  before_action :set_api_v1_meet_tean, only: [:show, :update, :destroy]

  # GET /api/v1/meet_teans
  def index
    @api_v1_meet_teans = Api::V1::MeetTean.all

    render json: @api_v1_meet_teans
  end

  # GET /api/v1/meet_teans/1
  def show
    render json: @api_v1_meet_tean
  end

  # POST /api/v1/meet_teans
  def create
    @api_v1_meet_tean = Api::V1::MeetTean.new(api_v1_meet_tean_params)

    if @api_v1_meet_tean.save
      render json: @api_v1_meet_tean, status: :created, location: @api_v1_meet_tean
    else
      render json: @api_v1_meet_tean.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/meet_teans/1
  def update
    if @api_v1_meet_tean.update(api_v1_meet_tean_params)
      render json: @api_v1_meet_tean
    else
      render json: @api_v1_meet_tean.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/meet_teans/1
  def destroy
    @api_v1_meet_tean.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_meet_tean
      @api_v1_meet_tean = Api::V1::MeetTean.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_meet_tean_params
      params.fetch(:api_v1_meet_tean, {})
    end
end
