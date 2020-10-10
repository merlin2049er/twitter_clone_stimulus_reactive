class TimelineChannel < ApplicationCable::Channel
  def subscribed
     stream_from "some_timeline"
  end


end
