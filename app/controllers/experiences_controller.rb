class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
  end

  def new
    @experience = Experience.new
  end

  def show
    @experience = Experience.find(params[:id])
    @booking = Booking.new
  end

  def create
    @experience = Experience.new(experiences_params)
    @experience.user = current_user
    if @experience.save
      redirect_to experiences_path
    else
      render :new
    end
  end

  private

  def experiences_params
    params.require(:experience).permit(:title, :address, :description, :price, :rating, :user_id)
  end

  def find_experience
    @experience = Experience.find(params[:id])
  end

end
