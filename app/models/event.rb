class Event < ApplicationRecord
  has_many :tickets
  validates :description, presence: true
end
