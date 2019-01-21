class MatchChannel < ApplicationCable::Channel
  def subscribed
    stream_from "match_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def move
   ActionCable.server.broadcast("match_channel",
                                message: "moving")
  end

end
