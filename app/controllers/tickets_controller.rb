class TicketsController < ApplicationController
  def create
    event = Event.find_by(id:ticket_params[:event_id])
    if !event
      flash[:warning] = "No such event"
      redirect_to root_path
    elsif !event.attendees.include?(current_user)
      Ticket.create(ticket_params)
      redirect_to events_url
    else
      flash[:info ] = "You already are attending"
      redirect_to event
    end
  end


  def destroy
    Ticket.find_by(ticket_params).destroy
    redirect_to events_url
  end

  private
    def ticket_params
      params.require(:ticket).permit(:event_id,:attendee_id)
    end
end
