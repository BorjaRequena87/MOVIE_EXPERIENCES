class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @experience = Experience.new
    @booking = Booking.new(user: @user)
  end
end
