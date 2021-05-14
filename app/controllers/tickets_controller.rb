class TicketsController < ApplicationController
  def create
    Ticket.create(event_id: params[:id], attendee_id: current_user.id)
    @event = Event.find_by(id: params[:id])
    redirect_to @event
  end
end
