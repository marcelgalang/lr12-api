require 'pry'

module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: [:show, :update, :destroy]
      # before_action :authenticate_user

      # GET /users
      def index

        @users = User.all

        render json: User.all, include: ['lefts', 'rights', 'ones', 'twos']
        # binding.pry
      end

      # GET /users/1
      def show
        current_user
        binding.pry
        render json: @user, include: ['lefts', 'rights', 'ones', 'twos']
      end

      # POST /users
      def create
        binding.pry
        @user = User.new(user_params)
        binding.pry
        if @user.save
          render json: @user, status: :created, location: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /users/1
      def update
        if @user.update(user_params)
          render json: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      # DELETE /users/1
      def destroy
        @user.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_user
          # @user = User.find(params[:id])
          @user = User.find_by_email(params[:email])

        end

        # Only allow a trusted parameter "white list" through.
        def user_params
          params.require(:user).permit(:email, :password_digest)
        end
    end
  end
end
