class MatchChannel < ApplicationCable::Channel
  def subscribed
    stream_from "match"
    @ships = Ship.where("status = true")
    ActionCable.server.broadcast "match", ShipSerializer.new(@ships)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    puts params
    @ship = Ship.find(params[:shipId])
    @ship.update(status: false)

    @ships = Ship.where("status = true")
    ActionCable.server.broadcast "match", ShipSerializer.new(@ships)
  end

  def move(data)
    # byebug
    # puts ship_params["data"]["id"]
    #@ship = Ship.find(ship_params["id"])
    #@ship.update(x: ship_params["x"], y: ship_params["y"], angle: ship_params["angle"])

    #@ships = Ship.where("status = true")
    ActionCable.server.broadcast "match", data
  end

  def shoot(dat)
    ActionCable.server.broadcast "match", dat
  end

  def disconnect(data)
    puts data
  end

end
