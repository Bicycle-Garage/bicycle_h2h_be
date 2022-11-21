class Api::V1::SessionsController < ApplicationController
  # before action

  def new; end

  def create 
    user = User.find_by(email: params[:email].downcase)
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: user
      }
    else
      render json: {messages: ["Invalid Email or Password"]}, status: :unauthorized
    end
  end
end