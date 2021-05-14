class Event < ApplicationRecord
  has_many :tickets

  validates :description, presence: true
  has_many :attendees, through: :tickets
  belongs_to :host, class_name: :user
end
