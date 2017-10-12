class Api::V1::OnesController < ApplicationController
  before_action :set_api_v1_one, only: [:show, :update, :destroy]

  # GET /api/v1/ones
  def index
    @api_v1_ones = Api::V1::One.all

    render json: @api_v1_ones
  end

  # GET /api/v1/ones/1
  def show
    render json: @api_v1_one
  end

  # POST /api/v1/ones
  def create
    @api_v1_one = Api::V1::One.new(api_v1_one_params)

    if @api_v1_one.save
      render json: @api_v1_one, status: :created, location: @api_v1_one
    else
      render json: @api_v1_one.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/ones/1
  def update
    if @api_v1_one.update(api_v1_one_params)
      render json: @api_v1_one
    else
      render json: @api_v1_one.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/ones/1
  def destroy
    @api_v1_one.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_one
      @api_v1_one = Api::V1::One.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_v1_one_params
      params.fetch(:api_v1_one, {})
    end
end
