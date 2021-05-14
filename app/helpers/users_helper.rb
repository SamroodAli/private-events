module UsersHelper

  def future_events
    current_user.attended_events.select {|event| DateTime.parse(event.date.to_s ) > DateTime.now.utc}
  end 
    
  def past_events
        current_user.attended_events.select {|event| DateTime.parse(event.date.to_s ) < DateTime.now.utc}
  end
end
