class ParkSpacesController < ApplicationController
  def index
    @park_spaces = ParkSpace.all
    @park_spaces = ParkSpace.includes(:park_assets)


    #Simple Search
    @park_spaces = @park_spaces.where("park_name LIKE ?", "%#{params[:q]}%") if params[:q].present?

    @park_spaces = @park_spaces.where(neighbourhood: params[:neighbourhood]) if params[:neighbourhood].present?
  end


    #@park_space = ParkSpace.find(params[:id])

    def show
      @park_space = ParkSpace.find(params[:id])
      @park_assets = @park_space.park_assets
      @pool = @park_space.pools
    end
end
