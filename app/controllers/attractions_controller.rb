class AttractionsController < ApplicationController
  before_action :verify_admin, except: [:index, :show]

  def index
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(attraction_params)
    if @attraction.save
      redirect_to show_ride_path(@attraction)
    else
      render :new
    end
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  def update
    @attraction = Attraction.find(params[:id])
    if @attraction.update(attraction_params)
      redirect_to show_ride_path(@attraction)
    else
      render :edit
    end
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def destroy
    Attraction.find(params[:id]).delete
    redirect_to attractions_path
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height )
  end
end
