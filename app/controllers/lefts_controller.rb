class LeftsController < ApplicationController
  before_action :set_left, only: [:show, :update, :destroy]

  # GET /lefts
  def index
    @lefts = Left.all

    render json: @lefts
  end

  # GET /lefts/1
  def show
    render json: @left
  end

  # POST /lefts
  def create
    @left = Left.new(left_params)

    if @left.save
      render json: @left, status: :created, location: @left
    else
      render json: @left.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lefts/1
  def update
    if @left.update(left_params)
      render json: @left
    else
      render json: @left.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lefts/1
  def destroy
    @left.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_left
      @left = Left.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def left_params
      params.require(:left).permit(:user_id)
    end
end
