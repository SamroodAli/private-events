class Event < ApplicationRecord
  has_many :tickets

  validates :description, presence: true
  has_many :attendees, through: :tickets
end
