class ShipsController < ApplicationController
	def index
		@ships = Ship.all
		options = {include: [:resources]}
		render json: ShipSerializer.new(@ships, options)
	end

	def show
		@ship = Ship.find(params[:id])
		options = {include: [:resources]}
		render json: ShipSerializer.new(@ship, options)
	end
end
