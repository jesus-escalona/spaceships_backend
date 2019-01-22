class ShipsController < ApplicationController


	def index
		@ships = Ship.all
		options = {include: [:resources]}
		render json: ShipSerializer.new(@ships, options)
	end

	def create
    @ship = Ship.new(ship_params)
		resource = Resource.find(1)
		@ship.resources << resource
    if @ship.save
      ActionCable.server.broadcast 'match_channel',
                                    name: @ship.name,
                                    color: @ship.color,
																		health: @ship.health
			render json: @ship
    end
  end

	def show
		@ship = Ship.find(params[:id])
		options = {include: [:resources]}
		render json: ShipSerializer.new(@ship, options)
	end

	private

	def ship_params
		params.require(:ship).permit(:name, :color)
	end

end
