class ShipsController < ApplicationController
	def index
		@ships = Ship.all
		render json: @ships
	end

	def show
		@ship = Ship.find(params[:id])
		render json: @ship
	end
end
