module EventsHelper
  def me?(user)
    user == current_user
  end

  def my_event?(event)
    me?(event.creator)
  end

  def others_event?(event)
    !my_event? event
  end

  def event_creator(event)
    my_event?(event) ? 'me' : event.creator.name
  end

  def attending?(event)
    event.attendees.include?(current_user)
  end

  def event_ticket(event)
    { event_id: event.id, attendee_id: current_user.id }
  end
end
