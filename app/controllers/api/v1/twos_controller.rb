
require 'pry'
module Api
  module V1
    class TwosController < ApplicationController
      before_action :set_two, only: [:show, :update, :destroy]

      # GET /twos
      def index
        @twos = Two.all

        render json: @twos
      end

      # GET /twos/1
      def show
        render json: @two
      end

      # POST /twos
      def create
        @two = Two.new(two_params)

        if @two.save
          render json: @two, status: :created, location: @two
        else
          render json: @two.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /twos/1
      def update
        if @two.update(two_params)
          render json: @two
        else
          render json: @two.errors, status: :unprocessable_entity
        end
      end

      # DELETE /twos/1
      def destroy
        @two.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_two
          @two = Two.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def two_params
          params.require(:two).permit(:user_id, :count)
        end
    end
  end
end

>>>>>>> Add scaffoldds of one, two and right
