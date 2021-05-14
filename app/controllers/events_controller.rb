class EventsController < ApplicationController
  def index
    if signed_in?
      @events = Event.where(user_id: current_user.id)
    else
      @events = Event.all
    end
  end
end
