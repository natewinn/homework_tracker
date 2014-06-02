class LocationsController < ApplicationController
  before_filter :authenticate_user!, :load

  def load
    @user = current_user
    @locations = Location.all
  end

  def index
    @new_location = Location.new
  end

  def show
    @location = Location.find(params[:id])
    @cohorts = @location.cohorts
  end

  def create
    @new_location = Location.new()
    if @new_location.save
      render locations_path
    end 
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def location_params
    params.require(:location).permit!
  end
  
end
         