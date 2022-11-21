class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:update, :destroy]

  def new
    @user = User.new
  end
  
  # POST /users
  def create
    @user = user_params
    @user[:email] = @user[:email].downcase
    @new_user = User.new(@user)

    if @new_user.save
      render json: @new_user, status: :created, location: @user
    else
      render json: @new_user.errors, status: :unprocessable_entity
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
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit(:email, :password, :password_confirmation)
    end
end
