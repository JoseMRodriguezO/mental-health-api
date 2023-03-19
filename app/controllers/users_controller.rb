class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def create
    user = User.new(
      email: params[:email],
      date_of_birth: params[:date_of_birth],
      gender: params[:gender],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
