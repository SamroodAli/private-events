class TicketsController < ApplicationController
  def create
    event = Event.find_by(id: params[:id])
    unless event.attendees.include?(current_user)
      Ticket.create(event_id: params[:id], attendee_id: current_user.id)
      event = Event.find_by(id: params[:id])
      redirect_to event
    else
      flash[:alert] = "You already are attending"
      redirect_to event
    end
  end
end
