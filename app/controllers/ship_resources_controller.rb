class ShipResourcesController < ApplicationController

  def index
    @resources = ShipResource.all
    render json: @resources
  end
end
