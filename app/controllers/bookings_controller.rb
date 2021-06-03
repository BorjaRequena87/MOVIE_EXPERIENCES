class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @experience = Experience.find(params[:experience_id])
  end

  def create
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new(booking_params)
    @booking.experience = @experience
    @booking.user = current_user
    if @booking.save!
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :experience_id, :start_date, :end_date)
  end
end
