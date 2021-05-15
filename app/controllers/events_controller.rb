class EventsController < ApplicationController
  def index
    if signed_in?
      @past_events = Event.past
      @upcoming_events = Event.upcoming
    else
      redirect_to root_path
    end
  end

  def new
    @event = current_user.events.build
  end

  def create
    date = event_params[:date].to_datetime.strftime('%Y/%m/%d %H:%M')
    @event = current_user.events.build(date: date, description: event_params[:description])
    if @event.save
      Ticket.create(attendee_id: current_user.id, event_id: @event.id)
      redirect_to @event
    else
      render :new
    end
  end

  def show
    @event = Event.find_by(id: params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:description, :date)
  end
end
