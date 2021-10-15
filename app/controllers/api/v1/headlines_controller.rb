class Api::V1::HeadlinesController < ApplicationController
  before_action :set_api_v1_headline, only: [:show, :update, :destroy]

  # GET /api/v1/headlines
  def index
    @api_v1_headlines = Api::V1::Headline.all

    render json: @api_v1_headlines
  end

  # GET /api/v1/headlines/1
  def show
    render json: @api_v1_headline
  end

  # POST /api/v1/headlines
  def create
    @api_v1_headline = Api::V1::Headline.new(api_v1_headline_params)

    if @api_v1_headline.save
      render json: @api_v1_headline, status: :created, location: @api_v1_headline
    else
      render json: @api_v1_headline.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/headlines/1
  def update
    if @api_v1_headline.update(api_v1_headline_params)
      render json: @api_v1_headline
    else
      render json: @api_v1_headline.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/headlines/1
  def destroy
    @api_v1_headline.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_headline
      @api_v1_headline = Api::V1::Headline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_headline_params
      params.fetch(:api_v1_headline, {})
    end
end
