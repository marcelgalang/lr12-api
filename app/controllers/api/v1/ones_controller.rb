
require 'pry'
module Api
  module V1

    class OnesController < ApplicationController
      before_action :set_one, only: [:show, :update, :destroy]

      # GET /ones
      def index
        @ones = One.all

        render json: @ones
      end

      # GET /ones/1
      def show
        render json: @one
      end

      # POST /ones
      def create
        @one = One.new(one_params)

        if @one.save
          render json: @one, status: :created
        else
          render json: @one.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /ones/1
      def update
        if @one.update(one_params)
          render json: @one
        else
          render json: @one.errors, status: :unprocessable_entity
        end
      end

      # DELETE /ones/1
      def destroy
        @one.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_one
          @one = One.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def one_params
          params.require(:one).permit(:user_id, :count)
        end
    end
  end
end
>>>>>>> Add scaffoldds of one, two and right
