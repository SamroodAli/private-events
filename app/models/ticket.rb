class Ticket < ApplicationRecord
  belongs_to :attendee, class_name: :User
  belongs_to :event
  validates :attendee, presence: true
  validates :event, presence: true
end
