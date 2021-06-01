class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @experience = Experience.new
    @booking = Booking.new(user: @user)
  end

  def new
    @user = user.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to experience_path(@experience)
    else
      render :new
    end
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
  end

  def user_params
    users.require(:user)
  end
end
