class Api::V1::ScrapersController < ApplicationController
  before_action :set_api_v1_scraper, only: [:show, :update, :destroy]

  # GET /api/v1/scrapers
  def index

    doc = Nokogiri::HTML(URI.open("https://gokhshteinmedia.com/2021/08/will-crypto-cars-become-the-future-of-driving/"))

    title = doc.css(".elementor-heading-title")
    title.each do |title| 
      binding.pry
    end
  end

  # GET /api/v1/scrapers/1
  def show
    render json: @api_v1_scraper
  end

  # POST /api/v1/scrapers
  def create
    @api_v1_scraper = Api::V1::Scraper.new(api_v1_scraper_params)

    if @api_v1_scraper.save
      render json: @api_v1_scraper, status: :created, location: @api_v1_scraper
    else
      render json: @api_v1_scraper.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/scrapers/1
  def update
    if @api_v1_scraper.update(api_v1_scraper_params)
      render json: @api_v1_scraper
    else
      render json: @api_v1_scraper.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/scrapers/1
  def destroy
    @api_v1_scraper.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_scraper
      @api_v1_scraper = Api::V1::Scraper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_scraper_params
      params.fetch(:api_v1_scraper, {})
    end
end
