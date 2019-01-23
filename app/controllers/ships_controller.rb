class ShipsController < ApplicationController

	def index
		@ships = Ship.all
		#options = {include: [:scores]}
		render json: ShipSerializer.new(@ships)
	end

	def create
    	@ship = Ship.new(ship_params)
	    if @ship.save
			@score = Score.new(ship: @ship)
		    ActionCable.server.broadcast 'match_channel',
		                                    name: @ship.name,
		                                    color: @ship.color,
											health: @ship.health
			#options = {include: [:scores]}
			render json: ShipSerializer.new(@ship)
	    end
  	end

	def show
		@ship = Ship.find(params[:id])
		render json: ShipSerializer.new(@ship)
	end

	private

	def ship_params
		params.require(:ship).permit(:email, :name, :color)
	end

end
