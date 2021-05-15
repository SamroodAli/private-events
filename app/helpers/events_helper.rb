module EventsHelper

  def my_event?(event)
    event.creator == current_user
  end

  def others_event?(event)
    !my_event? event
  end
  
  def event_creator(event)
    my_event?(event) ? "Me" : event.creator.name
  end

  def attending?(event)
    event.attendees.include?(current_user)
  end

  def event_ticket(event)
    {event_id:event.id,attendee_id:current_user.id}
  end

end
