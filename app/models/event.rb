class Event < ApplicationRecord
  has_many :tickets, class_name: :EventAttendee

  validates :description, presence: true

end
