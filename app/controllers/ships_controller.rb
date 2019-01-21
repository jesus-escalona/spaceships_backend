class ShipsController < ApplicationController

	def index
		@ships = Ship.all
		render json: @ships
	end

	def create
    ship = Ship.new(ship_params)
		resource = Resource.find(1)
		ship.resources << resource
    if ship.save
      ActionCable.server.broadcast 'match_channel',
                                    name: ship.name,
                                    color: ship.color,
																		health: ship.health
    end
  end

	def show
		@ship = Ship.find(params[:id])
		render json: @ship
	end

	private

	def ship_params
		params.require(:ship).permit(:name, :color)
	end

end
