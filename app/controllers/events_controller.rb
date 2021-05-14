class EventsController < ApplicationController
  def index
    if signed_in?
      @my_events = Event.where(creator_id: current_user.id)
      @other_events = Event.where.not(creator_id:current_user.id)
    else
      redirect_to root_path
    end
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      Ticket.create(attendee_id:current_user.id,event_id:@event.id)
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
    params.require(:event).permit(:description,:date)
  end
end
