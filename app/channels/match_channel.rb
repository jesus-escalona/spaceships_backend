class MatchChannel < ApplicationCable::Channel
  def subscribed
    stream_from "match"
    @ships = Ship.where("status = true")
    ActionCable.server.broadcast "match", response: @ships

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    @ship = Ship.find(params[:shipId])
    @ship.update(status: false)
    ActionCable.server.broadcast "match", response: @ship
  end

  def move
    ActionCable.server.broadcast "match", response: "Inside move"
  end



end
