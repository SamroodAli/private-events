class TicketsController < ApplicationController

  def create
    @ticket.create(event_id:params[:id],attendee_id:current_user.id)
  end
end
