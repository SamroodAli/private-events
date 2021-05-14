class EventsController < ApplicationController
  def index
    if signed_in?
      @events = Event.where(user_id: current_user.id)
    end
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to @event
    else
      render :new
    end
  end


  def show
    @event = Event.find_by(id:params[:id])
  end


  private
  def event_params
    params.require(:event).permit(:description)
  end
end