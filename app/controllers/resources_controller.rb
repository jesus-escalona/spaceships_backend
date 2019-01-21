class ResourcesController < ApplicationController

  def index
    @resources = Resource.all
    render json: @resources
  end


end
