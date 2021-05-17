module UsersHelper
  def my_future_events
    current_user.attended_events.upcoming
  end

  def my_past_events
    current_user.attended_events.past
  end
end
