class ShipsController < ApplicationController
	def index
		@ships = Ship.all
		render json: @ships
	end

<<<<<<< HEAD
	def create
		byebug
    ship = Ship.new(ship_params)
    if ship.save
      ActionCable.server.broadcast 'match_channel',
                                    name: ship.name,
                                    color: ship.color,
																		health: ship.health
    end
  end

	private

	def ship_params
		params.require(:ship).permit(:name, :color, :health)
	end

=======
	def show
		@ship = Ship.find(params[:id])
		render json: @ship
	end
>>>>>>> 5d84161b8f186b3e40c942fe8e359451b1d8020b
end
