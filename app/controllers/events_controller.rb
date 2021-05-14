class EventsController < ApplicationController
  def index
    if signed_in?
      @events = Event.where(user_id: current_user.id)
    else
      @events = Event.all
    end
  end

  def new
    @event = current_user.events.build
  end
end
