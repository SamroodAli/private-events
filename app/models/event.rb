class Event < ApplicationRecord
  has_many :event_attendees

  validates :description, presence: true

end
