class MatchChannel < ApplicationCable::Channel
  def subscribed
    # byebug
    stream_from "match"
    ActionCable.server.broadcast "match", data: ActionCable.server.connections.length

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    
  end



end
