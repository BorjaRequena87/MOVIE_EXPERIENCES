class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @experience = Experience.find(params[:experience_id])
  end

  def create
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new(boooking_params)
    @booking.experience = @experience
    if @booking.save
      redirect_to experience_path(@experience)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :experience_id)
  end

end
