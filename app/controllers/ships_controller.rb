class ShipsController < ApplicationController
	def index
		@ships = Ship.all
		render json: @ships
	end
end
