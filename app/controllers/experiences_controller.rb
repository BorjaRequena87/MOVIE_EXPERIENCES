class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experiences_params)
    if @experience.save
      redirect_to experiences_path(@experience)
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
