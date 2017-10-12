class Api::V1::RightsController < ApplicationController
  before_action :set_api_v1_right, only: [:show, :update, :destroy]

  # GET /api/v1/rights
  def index
    @api_v1_rights = Api::V1::Right.all

    render json: @api_v1_rights
  end

  # GET /api/v1/rights/1
  def show
    render json: @api_v1_right
  end

  # POST /api/v1/rights
  def create
    @api_v1_right = Api::V1::Right.new(api_v1_right_params)

    if @api_v1_right.save
      render json: @api_v1_right, status: :created, location: @api_v1_right
    else
      render json: @api_v1_right.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/rights/1
  def update
    if @api_v1_right.update(api_v1_right_params)
      render json: @api_v1_right
    else
      render json: @api_v1_right.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/rights/1
  def destroy
    @api_v1_right.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_right
      @api_v1_right = Api::V1::Right.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_v1_right_params
      params.fetch(:api_v1_right, {})
    end
end
