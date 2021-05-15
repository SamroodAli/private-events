class TicketsController < ApplicationController
  def create
    event = Event.find_by(id: params[:id])
    if !event
      flash[:warning] = "No such event"
      redirect_to root_path
    elsif !event.attendees.include?(current_user)
      Ticket.create(event_id: params[:id], attendee_id: current_user.id)
      event = Event.find_by(id: params[:id])
      redirect_to event
    else
      flash[:info ] = "You already are attending"
      redirect_to event
    end
  end
end
