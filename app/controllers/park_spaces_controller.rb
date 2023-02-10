class ParkSpacesController < ApplicationController
  def index
    @park_spaces = ParkSpace.includes(:park_assets)
  end

  def show
    @park_space = ParkSpace.find(params[:id])
  end
end
