class Event < ApplicationRecord
  has_many :tickets
  has_many :attendees, through: :tickets
  belongs_to :creator, class_name: :User

  validates :description, presence: true
  validates :date,presence: true
end
