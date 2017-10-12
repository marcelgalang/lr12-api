class Api::V1::TwosController < ApplicationController
  before_action :set_api_v1_two, only: [:show, :update, :destroy]

  # GET /api/v1/twos
  def index
    @api_v1_twos = Api::V1::Two.all

    render json: @api_v1_twos
  end

  # GET /api/v1/twos/1
  def show
    render json: @api_v1_two
  end

  # POST /api/v1/twos
  def create
    @api_v1_two = Api::V1::Two.new(api_v1_two_params)

    if @api_v1_two.save
      render json: @api_v1_two, status: :created, location: @api_v1_two
    else
      render json: @api_v1_two.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/twos/1
  def update
    if @api_v1_two.update(api_v1_two_params)
      render json: @api_v1_two
    else
      render json: @api_v1_two.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/twos/1
  def destroy
    @api_v1_two.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_two
      @api_v1_two = Api::V1::Two.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_v1_two_params
      params.fetch(:api_v1_two, {})
    end
end
