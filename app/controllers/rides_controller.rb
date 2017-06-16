class RidesController < ApplicationController

  def new
    @attraction = Attraction.find(params[:id])
    @ride = Ride.create(attraction: @attraction, user: current_user)
    flash[:notice] = @ride.take_ride
    redirect_to user_path(current_user)
  end

  def show
    @count = rides_count params[:id]
    @attraction = Attraction.find(params[:id])
  end

  private
    def rides_count attraction_id
      rides = Ride.all.where(attraction_id: attraction_id)
      rides.count
    end

end
