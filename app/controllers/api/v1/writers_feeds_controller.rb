class Api::V1::WritersFeedsController < ApplicationController
  before_action :set_api_v1_writers_feed, only: [:show, :update, :destroy]

  # GET /api/v1/writers_feeds
  def index
    @api_v1_writers_feeds = Api::V1::WritersFeed.all

    render json: @api_v1_writers_feeds
  end

  # GET /api/v1/writers_feeds/1
  def show
    render json: @api_v1_writers_feed
  end

  # POST /api/v1/writers_feeds
  def create
    @api_v1_writers_feed = Api::V1::WritersFeed.new(api_v1_writers_feed_params)

    if @api_v1_writers_feed.save
      render json: @api_v1_writers_feed, status: :created, location: @api_v1_writers_feed
    else
      render json: @api_v1_writers_feed.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/writers_feeds/1
  def update
    if @api_v1_writers_feed.update(api_v1_writers_feed_params)
      render json: @api_v1_writers_feed
    else
      render json: @api_v1_writers_feed.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/writers_feeds/1
  def destroy
    @api_v1_writers_feed.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_writers_feed
      @api_v1_writers_feed = Api::V1::WritersFeed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_writers_feed_params
      params.fetch(:api_v1_writers_feed, {})
    end
end
